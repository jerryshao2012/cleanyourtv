# 独播库TV 局域网跨设备进度同步设计与实现原理 (LAN Playback Sync Architecture)

## 1. 概述与设计背景 (Overview)

在家庭多 TV 设备环境（如客卧的小米盒子 Android 5.1 与客厅的 Sony Bravia Android 10/FireTV）下，独播库TV 原生仅依赖各自本地数据库（Room SQLite），无法跨设备共享播放历史与播放断点。

为了在**不依赖外部云端自建服务器**的前提下实现静默、实时的跨屏接续播放，本方案基于 **UDP 局域网无中心对等广播协议 (Decentralized UDP Peer-to-Peer)**，并在 Smali 字节码层深度集成到 Android 播放器生命周期、Room 数据库响应式链路以及 Jetpack Compose 渲染树中。

---

## 2. 核心系统架构 (System Architecture)

```mermaid
flowchart TD
    subgraph Device_A [发送端 TV (如 Sony TV)]
        A1[ExoPlayer / 播放器退出或切集] --> A2[LanSyncManager.sendPlaybackSync]
        A2 -->|组装 JSON 记录| A3[UDP Socket 端口 9876 广播]
    end

    subgraph LAN [家庭局域网 UDP Broadcast (255.255.255.255:9876)]
        A3 --> B1[局域网数据包]
    end

    subgraph Device_B [接收端 TV (如 小米盒子)]
        B1 --> C1[LanSyncManager UDP 接收监听线程]
        C1 --> C2{过滤自身广播 & 解析 JSON}
        C2 --> C3{冲突裁决 Priority Rule}
        C3 -->|胜出| C4[原生 SQLite 事务更新 records 表]
        C4 --> C5[Room InvalidationTracker 强制刷新]
        C4 --> C6[bumpSyncVersion 递增 Flow State]
        C6 --> C7[MovieDetailsScreen Compose 重组]
        C7 --> C8[resolveLatestRecord 读取最新进度]
        C8 --> C9[formatButtonText 更新为 '继续播放 第X集 XX%']
    end
```

---

## 3. 关键机制与实现原理 (Key Principles)

### 3.1 UDP 对等通信协议
- **监听端口**：固定为 `9876`。
- **协议格式**：UTF-8 编码的 JSON 数据包。
  - **同步数据包**：包含 `from` (设备唯一ID)、`id`、`name` (剧名)、`episode` (集数，如 "第5集")、`progressInMillis`、`durationInMillis`、`modifiedAt`、`detailPageUrl` 等。
  - **对等请求包**：`{"action": "REQUEST_SYNC", "from": "..."}`。在 App 启动 (`onAppCreate`) 或切到前台 (`onActivityResume`) 时全网广播，对端收到后会响应回传本地最新 20 条观看记录 (`respondAllRecords`)。
  - **防死循环机制**：每台设备在内存中依据 `Build.MODEL + android_id` 生成唯一 `sCurrentDeviceId`。接收时若 `from` 与本机 ID 相同则直接丢弃，避免广播风暴。

### 3.2 播放进度覆盖与冲突裁决算法 (Priority Rules)
当接收端本地已有相同剧集的记录时，并非盲目覆盖，而是严格按照以下优先级裁决：
1. **集数优先（Episode Number）**：
   - 提取集数数字（例如 `第41集` > `第40集`）。只要远端集数更大，**无条件覆盖**本地记录。
2. **同集进度优先（Progress within Same Episode）**：
   - 当集数相同时，比较毫秒进度 `progressInMillis`；若远端进度更大或时间戳更新，则更新本地。
3. **低集保护（Lower Episode Guard）**：
   - 仅当远端修改时间戳比本地全新 30 秒以上时，才允许低集数覆盖高集数（防止误操作倒退）。

### 3.3 数据库层双重触发 (Room SQLite Integration)
- 独播库应用使用 Room 架构，其表名为 `records`。
- `LanSyncManager` 通过原生 `openOrCreateDatabase("record_database", ...)` 写入数据，并使用 `CONFLICT_REPLACE`。
- **解决 Room 缓存不同步**：通过反射持有 `RecordDatabase` 实例，在底层写入完成后立即调用 `invalidationTracker.refreshVersionsSync()`，强制触发所有监听 `records` 表的 Coroutine Flow 向下游发射最新数据。

### 3.4 Jetpack Compose 实时重组与数据绑定
- **状态驱动**：在 `LanSyncManager` 中暴露 `sSyncVersionFlow` (`r2` 状态流）。写入数据后调用其混淆后方法 `j(Integer)` 递增版本号。
- **UI 订阅**：在 `MovieDetailsScreen` (`v.smali`) 顶层，通过 Compose 的 `collectAsStateWithLifecycle` 订阅该版本流并显式执行 `getValue()`。
- **混淆数据映射修复 (Critical Fix)**：
  - 在 R8 混淆后的数据类 `qa.p`（`MovieDetails`）中：
    - `qa.p.f` = **剧名 (Drama Name)**
    - `qa.p.b` = **详情页 URL (detailPageUrl)**
    - `qa.p.a` = **内部 ID**
  - 此前旧代码误将 `p.b` 当作剧名，导致 SQL 查询命中失败，修正字段读取后，重组能 100% 精确映射到刚同步进来的最新进度记录。

### 3.5 自动清洗与维护机制 (Auto Purge)
- 针对测试过程中可能产生的临时记录（如 `测试同步剧`）：
  - 在 `LanSyncManager$1` (UDP 监听线程启动入口) 与 `checkSyncOnPlay` 注入自动清理逻辑：App 启动或首次触发同步检测时，自动执行 `DELETE FROM records WHERE name = '测试同步剧'` 并触发版本流更新。
  - 在 `respondAllRecords` 的 SQL 查询中增加过滤条件，确保测试残留记录永远不会在局域网设备间反向扩散传播。

---

## 4. 关键注入点与 Smali 文件分布 (Smali Distribution)

| 文件路径 | 修改目的与注入行为 |
| :--- | :--- |
| `smali_classes3/com/supertws/dubokutv/LanSyncManager.smali` | 局域网同步核心单例、UDP 收发、冲突算法、Room Tracker 反射通知 |
| `smali_classes3/com/supertws/dubokutv/LanSyncManager$1.smali` | UDP Receiver 独立后台线程，包含启动阶段的历史自动清理 |
| `smali_classes3/com/supertws/dubokutv/LanSyncManager$3.smali` | 响应全网同步的广播线程，包含防止扩散的过滤条件 |
| `smali_classes3/com/supertws/dubokutv/presentation/screens/moviedetail/v.smali` | 详情页 Compose 组件：订阅版本流、劫持 `resolveLatestRecord` 与按钮文字重组 |
| `smali_classes3/com/supertws/dubokutv/presentation/screens/videoPlayer/p1.smali` | 播放器退出/后台时触发局域网广播广播当前进度 |
| `smali_classes3/com/supertws/dubokutv/e.smali` | 拦截 `RecordDatabase` 构造并在 `LanSyncManager.sRoomDb` 暂存实例句柄 |
| `smali_classes3/com/supertws/dubokutv/DubokuTvApplication.smali` | Application 启动入口调用 `LanSyncManager.onAppCreate(Context)` |
| `smali_classes3/com/supertws/dubokutv/MainActivity.smali` | Activity 进入前台调用 `LanSyncManager.onActivityResume(Activity)` |

---

## 5. 跨设备验证表现 (Verification Results)

- **环境**：Sony Bravia 4K (Android 10) 与 海信 / 小米盒子 (Android 5.1)。
- **测试结果**：
  1. 停留在剧集详情页（"继续播放" 按钮处于视野中），远端设备播放更高级数或向前跳跃进度时，**停顿屏幕在 1~2 秒内静默刷新为最新集数及百分比**，无需退出重进。
  2. 点击刷新后的“继续播放”按钮，播放器准确跳转至对应最新集数与对应断点播放秒数。
  3. 各 TV 上的历史“测试同步剧”已被全自动静默消除。
