# 播放进度同步可靠性加强计划

## 目标与边界

目标是在按关闭键或电视休眠时尽可能保存并发送最新播放进度；即使进程被杀、网络暂断或 UDP 丢包，也能在网络和应用再次运行后补传。休眠中的即时网络送达不作保证：Android Doze 会暂停网络访问并延迟后台任务。

本次范围是播放进度的本地提交、LAN 确认、云端持久补传与一致冲突规则。不改家庭账号协议、数据库表结构，不增加服务端接口；快照通过显式 v2 路由升级，并使用 API 22 已支持的 JobScheduler 持久调度，不新增依赖。普通播放进度可以节流；开始新一集、片尾和暂停是关键事件，仍必须排云端补传。

## 当前实现核对

- `LanSyncManager.onPlaybackSaveCommitted()` 在播放记录成功提交后广播 UDP，并调用 `CloudSyncClient.onCommittedSave()`。
- `LanSyncManager.onActivityPause()` 仅请求上传数据库当前快照；它不先读取播放器最终位置，也不等待尚未完成的播放记录写入。
- `CloudSyncClient` 用进程内 `ScheduledExecutorService` 合并、节流和重试上传；`cloudDirty` 持久化，并由 JobScheduler 在网络可用/重启后恢复补传。
- UDP 播放进度没有 ACK。双播/子网广播可提高送达机会，但发送端不能确认对端已落库。
- LAN `LanSyncManager$2.run()`、`CloudSnapshotMerger` 和 Worker `wins()` 都以 `modifiedAt` 为首要顺序，同时间再以集数/进度决胜。必须继续统一这些规则。
- 实际 APK 路径是 LAN 接收逻辑 `smali_classes3/.../LanSyncManager$2.smali`、云客户端 `smali_classes4/.../CloudSyncClient*.smali`；不能只改 Java 源码。
- `build_universal_apks.sh` 会校验 `apks/patches` 与 `cleanyourtv/patches` 的指定镜像。任何实现都必须同步两处源码及实际打包 smali，并更新构建检查。

## 目标流程

```text
播放器位置采样
       ↓
本地记录持久化 + cloudDirty=true
       ↓
UDP 进度广播 ── ACK（对端已提交/已有更新版本）──→ 普通进度可跳过本轮云上传
       │                                             但保留 dirty，稍后/关键节点补传
       └── ACK 超时 / 单机 / LAN 关闭 ────────────→ 云端补传任务

暂停 / 新集 / 片尾：不论是否收到 ACK，都排云端补传
网络恢复、应用启动或回到前台：检查 dirty，重读本地最新快照并补传
```

云端是跨休眠和跨局域网的最终汇合路径；LAN 是低延迟快路径。ACK 只能证明至少一个对端处理过消息，不能证明所有家庭设备在线或已同步。

## 实施阶段

### 阶段 1：补齐“暂停前最终位置已落库”

**改动点**

- 查清播放器生命周期和 `VideoPlayerScreenViewModel$saveRecord$2` 的真实保存时序；确认 `onActivityPause` 能否访问有效播放器与保存入口。
- 在 `LanSyncManager.onActivityPause(Activity)` 中触发一次最终位置保存，并确保保存完成回调之后才构造云快照、发 LAN 包、排云任务。
- 保留当前 `onActivityPause()` 的紧急上传优先级窗口，用于覆盖暂停后完成的异步 Room 保存；不可先读取快照后就认为最终记录已包含。
- 如果播放器已经释放或采样/保存失败，不覆盖已有本地记录；`cloudDirty` 保持为 true，供恢复/启动补传。

**验收**

- 暂停发生在常规进度保存之间时，数据库和两条同步路径拿到的进度等于暂停瞬间播放器位置。
- 暂停采样失败、Room 延迟提交时，不会清除 dirty，也不会将旧快照误标成功。

### 阶段 2：为 LAN 进度广播加入 ACK 与超时兜底

**协议**

- 在进度 JSON 中增加随机 `messageId`；现有接收方忽略未知字段，保持旧版互通。
- 新版接收方写入/确认数据库之后返回 `PROGRESS_ACK`，带 `messageId`、发送者 device ID、接收者 device ID 和处理结果（`applied` / `already_current`）。若本地已有更新版本也可以 ACK `already_current`，但只作为“对端不落后于该消息”的确认。
- ACK 仅匹配当前待确认的 messageId、合法的家庭 peer 和非本机 device ID；绝不接受任意数据包作为确认。关闭 LAN 同步时不收发 ACK。
- 设确认窗口（当前 3000 ms），最多补发 2 次；接收端按发送者与 messageId 短期去重，并对重复消息重发 ACK。复用现有 UDP 广播，不建立长连接。

**决策规则**

- 普通进度：收到至少一个有效 ACK 后，允许跳过本轮云 PUT；超时、发送异常或无其他活跃 peer 则立即排云兜底。
- 暂停、新集、片尾：ACK 仅表示 LAN 快路径成功，仍立即排云端持久补传。
- 未收到 ACK 时不阻塞播放或 Activity 生命周期；确认窗口只控制同步决策。
- ACK 丢失可能造成重复广播/云 PUT，必须保持接收幂等；不可为了避免重复而丢掉待同步状态。

**验收**

- 两台在线电视：接收端提交后 ACK，普通进度云 PUT 被跳过；下一关键事件仍上传。
- 接收端离线、UDP 丢包、ACK 丢包或 LAN 关闭：云端兜底任务被安排。
- 同一广播重复收到不会重复插入记录或重复触发 UI 刷新；重复包仍能重发 ACK。
- 旧版电视忽略新字段，仍可接收进度；新版发送端因其不回 ACK 自动走云端路径。

### 阶段 3：持久化云端补传

**改动点**

- 用 Android `JobScheduler` 的持久单次 Job 作为补传信号，要求网络可用、指数退避并设置 `setPersisted(true)`；申请 `RECEIVE_BOOT_COMPLETED` 以便设备重启后恢复调度。API 22 已支持这些能力。
- Job 启动时触发现有云端读合并和串行上传队列；队列从本地 DB 重建最新 20 条快照，不持久化过期的进程内快照。
- 在播放保存 coroutine 启动 Room 写事务前先持久化 `cloudDirty=true`，提交回调确认成功后再 enqueue。若进程在提交后回调前被杀，dirty 仍保留；启动、回前台和网络恢复时检查 dirty 并重新 enqueue。
- 只有 PUT 成功，且上传期间没有新版本提交时，才清除 dirty。云开关关闭时不读写云；重新开启后根据 dirty 补传。
- 保留现有 `CloudSyncClient` 单线程串行与 `CloudSyncGate` 读后写保护；Job 只触发和等待既有 HTTP/身份校验路径，避免并行 PUT 乱序。
- `cloudAuthRejected` 属于需用户处理的失败，不做高速无限重试；普通网络错误按 JobScheduler 退避重试。日志只记结果和错误类别，不记录家庭密钥或播放隐私。

**验收**

- 进程被杀、电视重启、短暂断网后，dirty 最终会触发最新快照上传。
- 上传中有新提交时，旧 Worker 成功不能误清新提交的 dirty。
- 多个提交折叠为最新快照；单个网络失败遵循退避，不产生并行 PUT 风暴。
- API 22、Android 10、Fire TV/Android 11 和 Android 14 兼容性构建通过；不得假定 expedited 工作在休眠时即时运行。

### 阶段 4：关键事件触发和常规流量策略

**触发定义**

- **新一集**：同一剧名的已提交 episode 与本次不同；首条记录/状态缺失也按关键事件立即同步。以保存成功后判定，不能在播放器点击事件上提前标记成功。
- **片尾**：`duration > 0` 时满足 `remaining <= min(120_000 ms, max(30_000 ms, duration * 0.05))`；duration 无效时不猜测片尾，暂停仍会兜底。
- **暂停/关闭**：阶段 1 的最终位置提交成功即视为关键事件并安排云端工作。
- **普通进度**：LAN ACK 成功可省略本轮云 PUT；没有 ACK 走云端。未被关键事件触发的 cloudDirty 仍由恢复、启动和网络恢复补传。

**改动点**

- 在 `PlaybackSaveGuard`/保存提交入口识别 episode 变化，避免重复相同进度被误判为关键事件；该判定须持久化或从 DB 比较，进程重启不能丢失。
- 给片尾阈值判断提取最小纯函数，便于 assert 风格测试；不新增用户设置项。
- 普通进度继续沿用当前 30 秒云上传节流；关键事件明确绕过节流与普通 ACK 抑制。

**验收**

- 同集普通进度、换集、首条记录、duration=0、短片长片尾边界、暂停都有单测覆盖。
- 同一个新集的后续进度不会每次都变成“新集事件”。

### 阶段 5：增加家庭逻辑时钟同步

**设计原则**

- 不尝试修改 Android 系统时钟。普通应用没有设置设备系统时间的权限；`System.currentTimeMillis()` 可被用户或网络校时前后跳变，`elapsedRealtime()` 单调且包含休眠、但重启后归零。因此使用应用内的有效 UTC 时钟，不碰电视设置。
- 可信 UTC 优先来自现有 HTTPS Worker 响应的 `Date`（TLS 已验证）；系统网络时间只作可选来源。`SystemClock.currentNetworkTimeClock()` 不适用于 API 22 基线，精度也不保证，不能作为唯一实现。
- 通过 NTP/SNTP 样式四时间戳交换估算偏差与 RTT：请求方记录 `t1/t4`，时间源记录 `t2/t3`；按往返延迟校正偏差。收集多次样本，优先最低 RTT 样本，记录 sample age 与 uncertainty；不把单个 UDP 广播的到达时间直接当成时钟差。
- LAN 内由拥有最新、仍有效可信 UTC 样本的设备提供时间；可信度相同时按稳定 deviceId 决胜。设备启动/恢复、收到可信网络时间、系统墙钟变化或样本过期时重新测量。时间源离线后重新选举。
- 没有可信 UTC 时，可由稳定 LAN leader 维持共同逻辑时间，但明确标记未校准。恢复外部时间后平滑校正。偏差用于 app 的 `effectiveNow`，以 `elapsedRealtime()` 为单次开机内的递增基准；校时不得让 effectiveNow 回退。重启后先用持久 offset 估算，再重新测量。
- 若偏差超过初始阈值 5 分钟，不立即大幅校正；连续高质量样本确认后限速 slew，避免坏设备把全家时间推到未来。只保存偏差、RTT、采样时间、有效期和可信度，不保存账号信息。

**协议**

- 增加 `TIME_PROBE` / `TIME_REPLY`（或等价请求/响应），包含协议版本、nonce、from/to deviceId、四时间戳与样本质量；只响应合法家庭 peer，校验 nonce/目标、限频并拒绝过期或格式错误的包。
- 同时启动时按稳定设备 ID 选主，并为应答加入小随机延迟以减少 UDP 响应碰撞；高质量的新样本可替代旧源。LAN 关闭时不交换样本，云端关闭时不取 Worker 时间。

**验收**

- 模拟设备时钟快/慢 1 秒、1 分钟、1 小时；高 RTT、时钟前后跳变、休眠唤醒、重启、时间源离线、无互联网但 LAN 可用、LAN 隔离。
- 在线新版电视的 app 有效时间按实测误差收敛；高 RTT/过期样本不压过新低 RTT 样本；坏样本不会造成有效时间倒退或持续跳到未来。
- 没有可信样本时仍可本地保存和同步，不以时钟同步作为播放或补传前置条件。

### 阶段 6：统一时间戳冲突与并发写入

**规则**

- 裸墙钟不足以解决离线写入、时钟回拨和并发。每条同步记录增加版本元组 `clockVersion = (effectiveUtcMillis, logicalCounter, deviceId)`，按词典序比较；较新元组胜出。新协议中 episode/progress 不得越过较新版本，只作为 legacy 记录缺少版本元组时的决胜规则。
- 本机每次播放保存生成持久版本；收到远端版本后推进本地逻辑计数，保证“收到后再写”的因果顺序更大。时钟偏差时逻辑计数仍提供确定顺序；LAN 校时改善 UTC 分量，但不是正确性依赖。
- `modifiedAt` 保留用于展示；新协议权威比较使用 clockVersion。本地缺少 sidecar 元组的旧记录以 `(modifiedAt, 0, deviceId)` 初始化。Worker 云快照只接受带 clockVersion 的 schema v2。
- 不改既有 Room `records` 表，版本元数据存放在 app 私有 sidecar，以规范化记录键映射；只保留当前最多 20 条同步记录的元数据，启动时与 DB 对齐并清理孤儿项。
- 已部署协议：Worker 只提供 `/v2/sync`，仅接受 schema v2；`/v1/sync` 与 v1 快照转换已于 2026-11-10 移除（家庭注册和认证 API 仍使用各自的 `/v1/...` 路由）。R2 对象仍使用现有 `v1/{familyId}/{deviceId}.json` 键名，但对象内容必须为 schema v2；目前检查的四份家庭快照均符合。所有电视升级后不再维护旧同步客户端兼容。
- LAN 多包合并与 SQLite 写入保持单一锁/事务边界；发送确认只能在冲突裁决和写入完成后发出。

**验收**

- 单机单调版本、较低集数但后写的真实回看、同 UTC 时间逻辑计数、跨设备并发、长时间离线补传和坏时钟有逻辑测试；Worker 测试确认 v1 路由返回 404、schema v1 PUT 被拒绝，v2 的 `mergeRecord()` 按版本元组比较。
- Android 测试覆盖 LAN/云端合并和 sidecar 恢复。

## 文件与打包清单

| 位置 | 计划职责 |
|---|---|
| `LanSyncManager.java` | 最终位置保存触发、ACK 协议、消息去重、超时决策、LAN 后写 ACK |
| `PlaybackSaveGuard.java` | 新集/重复提交判别及单调 modifiedAt 所需的最小状态 |
| `CloudSyncClient.java` | 持久 Job enqueue、dirty 安全清除、关键事件优先级与现有串行门控衔接 |
| `ProgressSyncJobService.java` | 持久网络任务恢复，委托现有云端队列并等待 dirty 清除 |
| `CloudSnapshotMerger.java`、`ProgressSnapshot.java` | 验证与比较版本元组、兼容 legacy 记录 |
| 新增 `FamilyClock.java`（或等价小型类） | app 有效 UTC、样本质量/过期、单调推进与 LAN 时间探测；不调用系统改时 |
| `r2-sync-worker/src/index.ts` | 仅 v2 同步、版本元组比较与 R2 快照校验 |
| `tests/CloudSyncSchedulingTest.java`、`CloudSyncGateTest.java`、新增纯 Java/Android 测试 | ACK/时钟状态机、版本元组、dirty、重试及关键事件阈值逻辑 |
| `tests/test_*.py` 与 `r2-sync-worker/test/worker.test.mjs` | 锁定真实 smali 路径、镜像/DEX 布局和 Worker 冲突行为 |
| `smali_classes3/.../LanSyncManager*.smali`、`VideoPlayerScreenViewModel$saveRecord$2.smali`、`PlaybackSaveGuard.smali`、`CloudSnapshotMerger.smali`、新增 `FamilyClock.smali` | 同步实际 dex 逻辑；重点检查最终提交和 `$2.run()` 接收端真实路径 |
| `smali_classes4/.../CloudSyncClient*.smali`、`smali_classes3/.../ProgressSyncJobService.smali` | APK 的唯一云客户端实现和持久 Job 入口；避免 classes3 旧副本遮蔽 |
| `build_universal_apks.sh`、`cleanyourtv/patches/duboku-v7.5/` | 扩充镜像比较项，同步 canonical/mirror 源码和 smali，确保构建拒绝漂移 |

不改 Room `records` 表 schema，不申请系统改时权限，不新增前台服务。云端同步仅支持 schema v2；旧 `/v1/sync` 客户端必须先升级。JobScheduler 是最终补传机制，不承诺休眠中立即执行；完成条件仍以服务器上传成功且没有更新版本为准。

## 验证顺序

1. 纯逻辑测试：关键事件分类、阈值、ACK 状态机、超时/重试、同一 messageId 幂等、时间戳排序。
2. Android DB 测试：最终位置写入后 ACK、旧包不覆盖新记录、dirty 只在对应快照成功后清除。
3. Worker 单测：跨设备快照仍按一致时间戳规则合并，不删旧记录或截断行为回归。
4. Worker 路由测试：`/v1/sync` 返回 404，`/v2/sync` 执行授权和 schema 校验，legacy schema PUT 被拒绝，v2 写入按元组正确合并。
5. 打包门禁：运行 `tests/test_*.py`、Java/Android 测试和 `build_universal_apks.sh`；检查 dex 中只有 classes4 有完整 CloudSyncClient，时钟/Worker 类可加载。
6. 多电视实机矩阵：两台同网/不同网、单电视、关闭 LAN、UDP 丢包、云端断网、时钟快慢与回拨、播放中按返回/主页/电源、进程强杀、电视重启、断网恢复、新集和片尾。
7. 记录有效 UTC 偏移/RTT/不确定度、版本元组、LAN messageId/ACK 结果、cloudDirty 生命周期、JobScheduler 状态和 Worker PUT 结果。日志不得包含 familySecret、账号或无关个人信息。

## 发布/回退要求

- 先以内部 APK 在 Sony、Hisense Fire TV、Xiaomi Mi Box 3(API 22)、Xiaomi Android 14 覆盖安装，不清除应用数据；逐项确认播放、历史和家庭同步设置不回退。
- 若 ACK 协商导致旧设备互通问题，可关闭“LAN ACK 跳过普通云上传”策略，保留 ACK 接收兼容；绝不能停用云端补传。
- 若 Worker 兼容问题，退回进程内立即上传路径并保留 dirty/启动补传；不得通过清空 dirty 或删除本地记录回退。
- 仅在实机休眠、重启、进程被杀和恢复网络场景都通过后，才把 ACK 降低普通进度云上传列为默认行为。

## 关键限制

JobScheduler 是最终补传机制，不是休眠前送达保证；任务仍受系统电源状态和厂商调度影响。暂停回调只能争取在设备真正睡眠前完成本地提交和网络请求，不能保证请求到达服务器。验收目标应是“进度不丢、恢复后自动收敛”，并把休眠前成功率作为实测指标而非正确性前提。

## 验收记录（2026-11-10）

- 本机逻辑验收：Python 测试 28/28 通过；Worker 测试 28/28 通过；六项纯 Java 测试（ACK 门禁、handoff、播放事件、版本、时钟及上传决策）通过。源码/Worker 镜像一致，`git diff --check` 通过。
- 初始实机矩阵使用 APK SHA-256 `04aab0bdaf84094f67dd65092b8a623ae42f2e7ed97dc7055b18f3415e12983c`；随后加入 LAN peer 接收校验并重建了 versionCode 33 / 7.5 APK，SHA-256 为 `89c7e4c0a55aa3ecfb07954aae7c4be2ff24ef86bb138e2ee9b418a5a22998b3`。
- Sony《兰香如故》第47集暂停后按 Home：日志记录最终位置提交及 UDP 广播 `2451s`，小米盒子日志收到同设备、同集、同位置；Cloud PUT 成功。小米和 Hisense 历史页都显示第47集观看比例 89%、更新时间 2026-11-10 16:08:23，与 2451/2765 秒一致。
- 普通进度有多个 `PROGRESS_ACK matched`；另有一次 ACK 超时后云端兜底成功。Hisense 应用未运行时启动，UDP 接收器恢复，收到 LAN 进度；云端对账 `peers=4 attempted=4 failed=0 success=true`，之后 Cloud PUT 成功。三台设备均可见相同最新记录。
- 本次观察到可信 LAN 时钟样本（Hisense 约 `-113 ms` 至 `-709 ms`，RTT `668–2079 ms`）；这只能证明探测/采样路径工作，不能替代人为设置快慢时钟和回拨的测试。
- 补齐 LAN 接收信任边界：只处理已登记家庭 peer 的进度包与 `REQUEST_SYNC`，同步更新 Java、实际加载的 `classes3.dex` smali 和构建门禁。回归测试先失败后通过；通用 APK 构建、签名、API 22/versionCode 33 校验通过，并在 `classes3.dex` 确认拒绝日志字符串。
- 远程覆盖安装到 Sony、Hisense Fire TV、小米盒子 5 Max，未清除应用数据。三台安装包的实测 SHA-256 均为 `89c7e4c0a55aa3ecfb07954aae7c4be2ff24ef86bb138e2ee9b418a5a22998b3`，versionCode 33 / 7.5；三台启动后云端对账均 `peers=4 attempted=4 failed=0 success=true`，Cloud PUT 成功，观看历史保留。三台历史页都显示《兰香如故》第47集 89%，修改时间 `2026-11-10 16:19:45`。新安装的小米盒子向 Sony、Hisense 发出合法 `REQUEST_SYNC`，两端均响应；Hisense 收到一个随机未知设备 ID 的 `REQUEST_SYNC` 后记录拒绝日志，未响应或广播历史。
- 本轮补验发现 Java 常量改成 3000 ms 不会自动更新 APK 中匿名 Runnable 内联的 smali 常量（仍为 700 ms）；已新增针对实际 `LanSyncManager$5.smali` 的回归检查，并同步更新源码镜像、smali、构建门禁。新构建全量构建门禁通过，APK SHA-256 为 `131e6da1f09ea9a37b20bd50887b2549488655e506fc68b447eff3c9c6f7bffe`；Sony、Hisense、小米安装后的 APK 拉取哈希均与构建一致。
- 最新双机实测使用非片尾的《早春晴朗》第4集（约 4%）排除片尾关键上传：Hisense 最终成功写入 Sony 的进度并发出 `Progress ACK sent`，但 ACK 约 13 秒后才处理；Sony 在 3 秒窗口后已触发云端 PUT。推断启动/历史对账期间接收端队列会延迟 ACK；LAN 写入和 ACK 发送路径工作，但“及时 ACK 后省略普通进度 PUT”在本次实机中仍未通过。超时兜底保住了云端最终记录。新增发送/接收 ACK 日志用于后续定位。

**仍待实机验收**：ACK 队列排空后的稳态普通进度是否能在 3 秒内 ACK 并省略本轮 PUT；单机无 peer 时的 PUT 次数、UDP/ACK 丢包注入、云端断网及网络恢复、按电源休眠/整机重启/强杀期间 dirty 与 Job 恢复、手动时钟快慢/回拨，以及 R2 对象内容的直接读取核验。未知 peer 的运行时拒绝已在 Hisense 验证；Sony 与小米的有效 peer 通路已验证，但未在三台分别注入未知 peer。全计划尚未完成验收。

## Best-practice 依据

- Android 离线优先设计：先写本地、将网络写排队、恢复连接后同步，并明确冲突策略：[Offline-first data layer](https://developer.android.com/topic/architecture/data-layer/offline-first)。
- Android 持久后台工作适合跨应用离开/进程重启的最终补传；本实现用 API 22 可用的 JobScheduler 持久任务，不承诺立即运行：[Persistent background work](https://developer.android.com/develop/background-work/background-tasks/persistent)。
- Doze 会暂停网络并延迟 jobs/syncs，唤醒锁不能绕过 Doze 限制：[Optimize for Doze and App Standby](https://developer.android.com/training/monitoring-device-state/doze-standby)。
- Android 区分可跳变的 wall clock 与包含休眠、单调递增但重启归零的 elapsed clock；网络时间 API 也有 API 版本和精度限制：[SystemClock API](https://developer.android.com/reference/android/os/SystemClock)。NTP offset 估算需要考虑往返延迟：[NTP timestamp calculations](https://www.ntp.org/reflib/time/)。
