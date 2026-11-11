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
- 本轮处理重复 LAN 历史快照：接收端在启动数据库 worker 前先 claim messageId；无 messageId 的历史快照按作品、集数、进度合并去重，重复已完成项直接回 ACK；Java、`classes3.dex` smali 和回归测试已镜像。新增测试先失败后通过，完整 `build_universal_apks.sh` 门禁通过。最终 APK versionCode 33 / 7.5，SHA-256 `02c1e985ac9a0a45a680033a08921904b2c3ab51aa5a52367dea9d8e44a1a38d`，已覆盖安装 Sony、Hisense Fire TV、小米盒子 5 Max；三台进程存活、UDP 接收器启动，无 `VerifyError`。
- 最终 APK 实机播放观察：Sony 的《早春晴朗》第4集进度从约 650s 增至 709s；Hisense 与小米均记录多次 `Synced newer remote progress`，因此 LAN 合并路径可用。接收端 ACK 仍晚于 3s 门限，Sony 继续每约 3–4s 出现一次 `Cloud upload succeeded`；ACK 减 PUT 的实机目标仍失败。操作误选了《早春晴朗》而非计划测试的《小城良方》，播放器已退出；测试进度已同步到该记录。
- 本轮根据运行日志确认两处原因并修复：相同 LAN peer 在同一毫秒重复发 `REQUEST_SYNC`，会重复启动 20 条历史记录响应；增加 2 秒防抖，实机看到 `Skipped duplicate REQUEST_SYNC response`。普通进度 ACK 超时时原来以 urgent 标志上传，绕过 30 秒节流；超时/普通发送失败现在仍立即标脏并安排持久 Job，但走普通节流，关键事件仍 urgent。对应源码、smali、镜像及回归测试同步。
- 防抖/节流版完整 APK 构建门禁通过，最终 SHA-256 `deee412c92a9208b5dac4596d0413c58b18ea6be10561bdfd450702108d269b8`，已安装 Sony、Hisense、小米盒子 5 Max。三台进程存活、接收器启动，无 `VerifyError`。Sony《早春晴朗》第4集每 5 秒广播，Hisense 连续写入至约 763s，小米发 ACK；普通进度云 PUT 观察到约 30 秒间隔（18:38:00、18:38:30），不再每次 ACK 超时都触发紧急 PUT。Hisense 的 ACK 仍迟于 3 秒门限，且无 ACK/UDP 丢包和云端断网注入，因此只验收了降频兜底，未验收 LAN 及时 ACK 优化。退出播放后记录最终进度，18:38:51 收到云上传成功；Sony 历史页仍显示《小城良方》第29集约 42%。本轮测试操作仍误选《早春晴朗》，进度已由先前约 650s 增至约 763s，并同步到 Hisense。
- 本轮补齐 ACK→Outbox：有效匹配 ACK 现在调用普通 `onCommittedSave(false)`，避免只留下 `cloudDirty` 而没有持久任务；持久 Job 加 30 秒最小延迟，避免 Job 立即触发远端读并绕过普通节流。新增 ACK 分支与 Job 延迟断言，先失败后通过；Python 门禁 31/31 通过，`build_universal_apks.sh` 全通过。最终 versionCode 33 / 7.5 APK SHA-256 `9636a784bf0f15adec45c02bafcb1b35a7a2de9f7111fa43fd1c28c01c181976`，Sony、Hisense、小米盒子 5 Max 设备端拉取哈希全部一致。
- 小城良方第29集稳态播放实测：Sony 发出约 `489s` 普通进度后 `0.5s` 收到有效 ACK；Hisense 与小米均记录到较新位置，随后 Cloud PUT 成功。该 PUT 距前次成功约 37s，符合 30s 普通节流；这证明 LAN ACK 闭环与云端 Outbox 并存，但未证明本次窗口一定省掉一次 PUT。启动/全量历史对账期间仍观察到接收端 ACK 约 17s 后才处理，3s 超时兜底仍必要。
- Sony 在同剧播放后暂停于约 `592s`（播放器 UI `09:52 / 41:53`）；Hisense 和小米日志都记录该最终位置已落本地，Sony 随后记录 Cloud PUT 成功。暂停后的播放位置没有继续增长。此轮未做整机休眠、断网、进程强杀与重启注入。
- 本轮检查进程恢复时发现源码和 APK dex 不一致：源码 `onCommittedSave()` 调度持久 Job，但实际 `classes4` 的 `CloudSyncClient.smali` 缺少 enqueue；补入后 JobScheduler 才能显示该任务。随后真实启动 Job 又暴露 `needsPersistentSync(Context)` 只存在于 Java 源码、未进入 dex；新增 smali 方法和回归断言，按 `cloudSyncEnabled && cloudDirty && !cloudAuthRejected` 返回，修复 Job 线程 `NoSuchMethodError`。JobScheduler 和持久任务真实加载路径现由 Python 测试锁定。
- 最终修复版完整构建门禁通过；最终 APK versionCode 33 / 7.5，SHA-256 `0304564127d2b58e02e4b355df187086dcb113c140af4293da51438a4bed4678`。Sony、Hisense、小米盒子 5 Max 设备端拉取 hash 均与该构建一致；三台应用进程均可启动，未观察到新的 `NoSuchMethodError`/`VerifyError`。Sony 的 JobScheduler 历史显示 `ProgressSyncJobService` 启动后以 `app called jobFinished` 结束；相邻日志有 `Cloud read result peers=4 attempted=4 failed=0` 和 `Cloud upload succeeded`，证明任务注册和执行路径工作。
- 进程死亡验收补充：`adb shell kill -9` 被 TV shell 拒绝；`am kill` 在播放前台服务活动期间没有终止主进程；`am crash <package>` 实际只崩溃 WebView sandbox 子进程。后续已用 `am force-stop` 验证：离线保存 dirty 后进程消失，恢复网络并手动启动时成功读取云端并 PUT 最新快照；仍未证明应用未被重新启动时 Job 能自动恢复（Android 对 force-stop 应用会限制后台任务）。

**仍待实机验收**：启动/全量历史对账期间 ACK 延迟超过 3 秒的情况能否通过减压消除；严格单机且局域网无其它活动 peer 时的 PUT 精确次数；真实网络层 UDP/ACK 丢包注入；仅云端不可用但 LAN 保持在线时的行为；进程死亡/force-stop 后持久 Job 自动补传；手动时钟快慢/回拨；以及 R2 对象内容的直接读取核验。已验证有效 LAN ACK 可省略普通 PUT；无有效 ACK 时约 30 秒云端兜底；Sony 在 Wi‑Fi 断开并进入休眠后，网络恢复时持久 Job 能在应用界面重新启动前自动补传；HOME 最终位置可即时上传，多电视最终收敛。休眠中即时联网不作保证，Doze/厂商电源策略可延迟任务。另已验证完整 Wi-Fi 断网后手动启动补传、force-stop 后手动启动补传及干净状态重启后的云端对账。仍未证明进程死亡/force-stop 后不经启动入口的自动恢复。关键暂停后云端成功已观察。未知 peer 的运行时拒绝已在 Hisense 验证。全计划尚未完成验收。

## Best-practice 依据

- Android 离线优先设计：先写本地、将网络写排队、恢复连接后同步，并明确冲突策略：[Offline-first data layer](https://developer.android.com/topic/architecture/data-layer/offline-first)。
- Android 持久后台工作适合跨应用离开/进程重启的最终补传；本实现用 API 22 可用的 JobScheduler 持久任务，不承诺立即运行：[Persistent background work](https://developer.android.com/develop/background-work/background-tasks/persistent)。
- Doze 会暂停网络并延迟 jobs/syncs，唤醒锁不能绕过 Doze 限制：[Optimize for Doze and App Standby](https://developer.android.com/training/monitoring-device-state/doze-standby)。
- Android 区分可跳变的 wall clock 与包含休眠、单调递增但重启归零的 elapsed clock；网络时间 API 也有 API 版本和精度限制：[SystemClock API](https://developer.android.com/reference/android/os/SystemClock)。NTP offset 估算需要考虑往返延迟：[NTP timestamp calculations](https://www.ntp.org/reflib/time/)。

- 2026-11-10 20:53 本轮修复持久 Job 的同 ID 重排取消：Job 运行时 `schedule()` 改为置 `reschedule` 标记；任务正常结束后由服务统一重排，避免 JobScheduler 在执行期间替换当前任务。`running` 在启动线程前设置；`jobFinished` 不并行请求系统 retry，dirty/retry 仍由服务重排。Java、classes3/classes4 smali 与两份测试镜像已更新。
- 本轮首个实机构建暴露 smali verifier 错误（局部寄存器类型冲突），该构建未作为验收版本；修正寄存器生命周期并重建后，在 Sony 触发应用返回/暂停没有 `AndroidRuntime` 崩溃，日志记录 Cloud PUT 成功。
- 最终构建门禁 `build_universal_apks.sh` 通过，APK versionCode 33 / 7.5，SHA-256 `8731fec971f0421108c31a312c12c855958f5aea7b720ec4e4b291a3f94c8abd`。从 Sony、Hisense、小米盒子 5 Max 拉取已安装 APK，三者 hash 与最终产物完全一致。
- Sony 整机重启后，持久 `ProgressSyncJobService` 启动并由 JobScheduler 记录 `app called jobFinished`；未出现 verifier/runtime 崩溃。重启前 dirty 已清，因此这次只证明任务恢复执行，不证明重启后 dirty 云补传。暂停回调的 Cloud PUT 成功已观察。
- 本轮补丁目录 Python 测试 apks 31/31、cleanyourtv 镜像 29/29 通过。整个 `cleanyourtv/tests` 探索性运行因未安装仓库要求的 tools/venv 依赖而出现若干环境相关导入/网络测试错误并中断，不作为同步实现回归失败。

- 2026-11-10 本轮修复普通进度 ACK 闭环：ACK 按 messageId 对应 dirty revision 聚合；只有全部待确认消息结清且当前 revision 未变化才清 dirty，并在清理竞态时恢复 dirty/重排 Job。超时/发送失败仍保留 Outbox 并走普通节流兜底。Cloud peer 读取现在只在 `cloudDirty=true` 时触发 PUT，避免干净快照读操作造成重复上传。
- 回归验收：ACK/云读门禁 Python 测试 2/2、持久 Job 测试 1/1、`SyncDecisionTest` 通过；`build_universal_apks.sh` 全量门禁通过，源码/Smali 镜像与 `git diff --check` 通过。生成 APK versionCode 33 / 7.5，SHA-256 `aaa54b2829c650d8d15f471cc7e7878be1c3ae7bb18e9f1619a4c386e2fa592d`。
- 本轮未能重做实机验收：ADB daemon 启动时系统拒绝绑定 `5037`（`could not install *smartsocket* listener: Operation not permitted`），因此未确认电视安装哈希、LAN ACK/云端 PUT 数量或云端最终记录；前序实测记录仍有效，但不视为本构建实机验收。

- 2026-11-10 本轮按实测补齐暂停保存云兜底：`onPlaybackSaveCommitted()` 在 ExoPlayer 实例仍存在但当前非播放时，将该保存分类为 critical，继续复用现有关键事件即时上传路径；构建门禁新增 source/实际 `classes3` smali 断言并核对镜像。新测试 1/1、APK 全量构建门禁及 smali 汇编通过。
- 新 APK versionCode 33 / 7.5，SHA-256 `9af05e4fa747db01eb9c5ab8a30a4745db7f3b578d25315e458b58731bb90cbb`，已在 Sony、Hisense、小米盒子 5 Max 覆盖安装；三台拉取 APK 哈希完全一致，启动无 `VerifyError`/`NoSuchMethodError`。Sony 云端对账 `peers=4 attempted=4 failed=0`，并有 `Cloud upload succeeded`。实机《小城良方》第29集记录在 Sony/Hisense/小米历史页一致为 89%、时间 `2026-11-10 22:27:05`；运行期间 Sony 广播进度，Hisense 与小米均落库并 ACK。
- 暂停专项仍未完全验收：电视遥控器媒体暂停键未稳定暂停；退回历史页后记录已更新，之后重新启动时云端 PUT 成功，但这不能证明暂停瞬间触发即时云 PUT。发送 HOME 后也未捕获到 `Flushed final playback position before pause` 日志；需用实际遥控器操作确认不同 Sony 播放器/Activity 生命周期回调。整机休眠/断网恢复/进程强杀/时钟偏移注入及 Worker R2 对象直接读回仍未测。

- 2026-11-10 验收纠错：上一构建尝试在 `onPlaybackSaveCommitted()` 查询 ExoPlayer 播放状态，Sony 实机复现 `Player is accessed on the wrong thread`（Room `DefaultDispatcher-worker-2` 调用）。根因是回调在数据库后台线程执行；Java 的 `try/catch` 未同步到实际 Smali 路径。已移除线程不安全的播放器读取，保留新集/片尾 critical 判定及 `onActivityPause()` 的主线程最终位置 flush；新增测试锁定保存回调不触碰播放器、Activity pause 保留 flush/紧急云同步。此前 `9af05e…` 构建不应继续使用。
- 修复版完整构建门禁通过，APK SHA-256 `ddf4e143dab695e186c96b196f1a4180adb84f143b0452c4c2dec46902a06c14`。覆盖安装 Sony、Hisense、小米盒子 5 Max；Hisense 和小米拉取 APK 哈希已确认一致，Sony 拉取哈希因后续离线无法复核。Sony 播放保存后进程保持存活、未再出现错误；按 HOME 后记录 `Flushed final playback position before pause`，最终位置广播约 `2281s`，并记录两次 `Cloud upload succeeded`。
- Hisense 启动后记录接收 Sony `小城良方 第29集 @2281s` 并合并；小米云端读取记录 `merged=true`。三台历史页最终为同一集约 91%（Sony `22:42:57`，Hisense/小米 `22:43:01`），证明 LAN 与云端的后续对账均工作。
- 本轮断网注入未完成：Sony 上通过 Wi-Fi ADB 执行 `svc wifi disable` 后 transport 立即断开，远程 shell 未能继续执行 Wi-Fi 恢复；当前 Sony ADB 显示 `offline`，本机 ping 也不可达。需在 Sony 电视上手动恢复 Wi-Fi/ADB 后才能继续网络恢复、休眠、重启及最终哈希核验。不要把本次离线注入记为通过。

- 2026-11-10 Sony 断网恢复复测：Sony 当前安装 versionCode 33 / 7.5，拉取安装 APK SHA-256 与构建件一致（`ddf4e143dab695e186c96b196f1a4180adb84f143b0452c4c2dec46902a06c14`）。以《小城良方》第29集进行测试：Wi-Fi 关闭时由预先安排的电视本机计时脚本触发 HOME，日志在 22:57:14 提交并广播最终位置 `2406s`；恢复 Wi-Fi 后 22:57:34 `Cloud read result peers=4 attempted=4 failed=0 success=true` 且 `Cloud upload succeeded`。应用重新前台后再次读云并 PUT 成功。Hisense 在断网前收到 LAN 进度至 `2392s`；恢复后 Sony、Hisense、小米三台历史页均显示第29集 97%，更新时间分别约 `22:59:28`、`22:59:24`、`22:59:29`。确认断网期间本地记录不丢、网络恢复后云端补传，最终设备记录收敛。
- 2026-11-10 Sony 重启复测：在播放停止、云端上传已成功后执行 ADB reboot；电视约 45 秒重新上线。启动应用后日志出现 `Cloud read requested: startup/resume`、`peers=4 attempted=4 failed=0 success=true` 及 `Cloud upload succeeded`，未发现同步运行时崩溃；Sony 历史仍显示《小城良方》第29集 97%。本轮证明干净状态下的重启后启动与对账；**未**证明重启瞬间仍有 dirty outbox 时 JobScheduler 必然补传。

- 2026-11-10 Sony dirty/进程死亡恢复验收：以《小城良方》第29集制造离线更新，Wi-Fi 关闭期间 HOME 日志提交 `2460s`；随后 `am force-stop com.supertws.dubokutv`，确认进程 PID 不存在。离线期间没有 Cloud PUT 成功日志。电视本机定时脚本恢复 Wi-Fi后手动启动应用，日志出现 `Cloud read requested: startup`、`Cloud read result peers=4 attempted=4 failed=0 merged=false success=true` 和 `Cloud upload succeeded`；接收 LAN 旧进度 `2451s`/同版本 `2460s` 均按版本规则忽略。Sony、Hisense、小米历史页均显示第29集 98%，更新时间约 `23:08:02–03`。这验证了“本地保存→强停→网络恢复→启动后补传→多设备最终收敛”；没有验证 Android 在 force-stop 状态自动执行 Job（Android 会阻止被强停应用的后台任务），补传由用户/启动入口恢复。

- 2026-11-10 Sony 普通进度 ACK/云 PUT 门控复测：在非片尾《早春晴朗》第4集（约 26%）播放 767–861s。Hisense 与小米均记录 LAN 新进度落库并发 `Progress ACK sent`；Sony 对多个 ACK 记录 `Progress ACK received` 与 `LAN ACK satisfied cloud dirty revision`。23:28:04–23:28:39 的 ACK 成功窗口无 Cloud PUT；`807s` 这条未及时 ACK 后于 23:28:43 出现云端兜底 PUT，之后 ACK 恢复且未逐条 PUT；HOME 保存最终 `861s` 后 23:29:34 Cloud PUT 成功。三台历史最终一致：早春晴朗第4集 29%、小城良方第29集 99%、兰香如故第47集 100%。据此标记 ACK 减少普通进度 PUT 和超时云兜底实机通过。
- 2026-11-10 测试数据恢复记录：一次 UI 点选误播放已完成的《兰香如故》第47集，短暂产生 `19s` 新版本并同步；随后将播放器定位到原时长 `2765s`（46:05），HOME 保存且 Cloud PUT 成功，Hisense/小米均接收 `2765s`。三台历史核对恢复为 100%，时间 `23:22:06`。该行完成状态已恢复；测试数据被纠正。

- 2026-11-10 Sony 无 ACK 超时兜底复测：先 force-stop Hisense 与小米 App，在 Sony 播放非片尾《早春晴朗》第4集。Sony 对广播 `865s` 后约 4 秒记录 Cloud PUT 成功；后续没有有效 `Progress ACK received`，Cloud PUT 维持约 30 秒节流（`23:33:29`、`23:33:59`、`23:34:30`），没有每 5 秒广播都上传。HOME 最终提交 `943s` 后 `23:34:44` 上传成功。重新启动 Hisense、小米后，Hisense 记录追到 `943s`，小米 Cloud read `merged=true`；三台历史均显示该集 32%、时间约 `23:34:50`。这验证了无 ACK 触发云兜底、节流及对端恢复后的收敛；该场景仅模拟接收 App 无响应，没有在网络层真实丢弃 UDP 包。
- 2026-11-10 Sony 待机/唤醒冒烟验收：在 Sony 空闲、无播放任务时用 `KEYCODE_SLEEP` 观察到 `mWakefulness=Asleep` 且 `Display Power=OFF`；预先安排的电视本机脚本在约 25 秒后发出 `KEYCODE_WAKEUP`，随后观测到 `Awake`、显示开启，Sony Wi-Fi ADB 与系统启动器均恢复。手动启动 Duboku 后进入 `MainActivity`，日志显示 `Cloud read result peers=4 attempted=4 failed=0 merged=false success=true`，没有发现同步运行时崩溃。该项只证明空闲待机/唤醒及随后手动启动对账；没有在播放或 dirty outbox 状态下休眠，也未证明应用可在唤醒后自动运行或休眠期间完成上传。
- 2026-11-10 回归复核：补丁目录 Python 测试 32/32、Worker Node 测试 22/22 通过；两份计划镜像一致，`git diff --check` 通过。Sony、Hisense、小米 Wi-Fi ADB 均在线，Sony 为 versionCode 33 / 7.5。尝试通过 `run-as` 只读检查 Sony 本地同步状态时，系统拒绝（应用非 debuggable）；未尝试导出私有凭据，因此 R2 直接对象读回仍待有安全授权的运维凭据验证。
- 2026-11-10 Sony 稳态 ACK 观察：Sony 播放中的日志在 `23:44:27` 记录一次 Cloud PUT 成功，之后 `23:44:29` 至 `23:45:39` 连续记录 `LAN ACK satisfied cloud dirty revision`，期间没有新的 Cloud PUT。此窗口支持“有效 ACK 后普通进度不逐条上传”的门控行为；对端保持在线，故不是单机/无 peer 验收，也没有覆盖启动时历史同步 ACK 延迟。
- 2026-11-10 Sony 无 ACK 与恢复闭环复测：先确认 Hisense/小米均停在观看记录/主界面，再仅 force-stop 这两台的 Duboku 进程；Sony 持续播放《早春晴朗》第4集。无 ACK 窗口 Sony Cloud PUT 成功时间为 `23:47:58`、`23:48:28`，约 30 秒间隔；对端恢复后 `23:48:50` 起 ACK 恢复。`23:48:59` 有一次在途/节流 PUT，之后连续 ACK 至 `23:50:04` 无新 PUT。Sony HOME 日志在 `23:51:17.899` 记录 `Flushed final playback position before pause`，`23:51:18.486` Cloud PUT 成功。Hisense 与小米观看记录均显示早春晴朗第4集 55%、更新时间 `23:52:14`；Sony 播放器暂停界面为 `27:26 / 49:40`（约55%）。本次验证“无有效 ACK 时云端约30秒兜底、恢复 ACK 后抑制普通 PUT、HOME 最终保存立即云上传、三台本地记录收敛”。这是两台应用暂停响应的无 ACK 模拟，并非网络层 UDP 丢包，也不能证明家庭网络里没有第四个 peer。
- 2026-11-11 Sony dirty/休眠/网络恢复验收（设备日志日期跨零点）：电视本机脚本先于保存关闭 Wi-Fi：`wlan0 up=false` 于 `23:57:41`；离线时 Sony 广播失败日志为 `ENETUNREACH`，HOME 在 `23:57:52.138` 写入最终位置 `早春晴朗 第4集 @1808s` 并记录 `Flushed final playback position before pause`。设备于 `23:57:55` 进入 `Asleep`，`23:58:24` 被电视本机脚本唤醒，`23:58:26` 恢复 Wi-Fi。网络恢复后 `ProgressSyncJobService` 在 `23:58:29.687` 自动启动，Cloud GET 成功于 `23:58:31`、PUT 成功于 `23:58:32.451`；启动应用的计时脚本直到 `23:58:47.175` 才执行 `monkey`，故 dirty 上传由持久 Job 在应用 UI 重新启动前完成。Sony 随后恢复播放并将更新继续经 LAN 传播；HOME 再次结束播放时 `23:59:53.886` flush、`23:59:54.359` PUT 成功。Sony、Hisense、小米最终观看记录均为《早春晴朗》第4集约63%（Hisense `23:59:56`、小米 `23:59:58`；Sony 播放器 `31:20/49:40`）。此项通过“离线提交→真实休眠→唤醒联网→持久 Job 自动补传→三台最终收敛”。Job 在测试前后进程仍存活；不代表进程被系统杀死或 force-stop 后也能在无启动入口时自动恢复。休眠期间没有即时上传保证。
- 2026-11-11 进程死亡尝试（未通过/不计入验收）：在离线 HOME flush 后分别调用 `am kill` 与 `cmd activity kill`，Sony shell 返回 `Failure calling service activity: Failed transaction (2147483646)`，`pidof com.supertws.dubokutv` 仍为原 PID（分别 `18052`、`27203`）。两次休眠后网络恢复，Job 分别于 `00:05:45`、`00:09:40` 启动并于 `00:05:47`、`00:09:42` 上传成功，且 UI 未被测试脚本重新打开；然而应用进程全程存活，所以只能再次确认“无 UI 启动时 Job 自动补传”，不能证明进程死亡后的恢复。另在干净空闲状态下 `cmd activity kill` 曾成功结束进程，但未与 dirty outbox 场景组合。
- 2026-11-11 版本冲突代码验收：复查发现 Worker、LAN 合并与云快照合并在版本元组完全相同时，若逻辑计数为 0 仍用集数/进度覆盖当前数据，违反版本元组的幂等裁决。已移除这三处平局回退，并同步实际 APK smali；新增 Worker 回归用例确认相同 v2 元组的第9集/更大进度重放不会覆盖原记录，新增源码/Smali 门禁。补丁 Python 测试 34/34、Worker Node 测试 23/23、完整 `build_universal_apks.sh` 通过，三份通用 APK SHA-256 为 `5985052535619928bfecae11bcdd8269a3c78757e494c283da1e292e8b25a0ef`。本条记录完成时尚未部署或安装；随后部署与电视冒烟见下条。计划中的 UDP/ACK 丢包、云端独立故障注入、强停后的自动 Job、时钟跳变、R2 直接读回等仍待实测。
- 2026-11-11 部署与电视冒烟：Cloudflare Wrangler 部署成功，Worker 版本 `ed1b2d63-a679-4819-9272-397996810d8c`。构建哈希 `5985052535619928bfecae11bcdd8269a3c78757e494c283da1e292e8b25a0ef` 的 versionCode 33 / 7.5 APK 以 `adb install -r` 安装至 Sony `192.168.87.232`、Hisense `192.168.87.37`、小米盒子 5 Max `192.168.87.38`，保留应用数据；三台 `lastUpdateTime` 均更新为本轮时间。启动后 PID 均存在，三台日志均有 `Cloud read result ... failed=0 ... success=true` 与 `Cloud upload succeeded`，未见 `VerifyError` 或 `FATAL EXCEPTION`。仅为安装/启动/同步冒烟，不是播放、暂停、休眠或故障注入验收，也不证明设备端相同版本冲突场景；该语义由 Worker 单测及 APK 源码/Smali 门禁覆盖。
- 2026-11-11 时钟诊断闭环：修复 TIME_REPLY 日志此前错误标注 `offset/uncertainty` 却只输出 uncertainty 的问题；Java 和实际 `LanSyncManager.smali` 现在记录 `sampleOffsetMs`、`rttMs`、`familyUncertaintyMs`，新增 Java/Smali 源码门禁，完整 APK 构建通过。更新 APK SHA-256 `4d2c89963c5d8a4fbdcd97e8608351548627d30602c2e89f812461a1c447dee0` 已安装到 Sony、Hisense、小米，三台安装包 SHA 均逐字节匹配构建件。实机日志：Hisense 样本偏移 `+11ms` / RTT `424ms` / 家庭不确定度 `1039ms`；小米记录多样本偏移 `+79ms` 至 `+1246ms` / RTT `483–1175ms` / 不确定度 `1035–1040ms`。Sony 收到其他电视的 REQUEST_SYNC 并正常云对账，但本轮没有观察到 Sony 自身 TIME_REPLY 样本日志；其探测的回复链路仍待查。以上证明诊断字段及至少两台设备的 LAN 时钟样本，不代表人工系统时钟漂移/跳变验收。
- 2026-11-11 播放专项尝试（未通过）：Sony 历史页《小城良方》第29集原记录为 `41:53`、99%、时间戳 `2026-11-10 23:25:59`。打开播放页后持续显示 `ERROR_CODE_IO_NETWORK_CONNECTION_FAILED`，ExoPlayer 报 `Source error`；重试一次仍失败。为避免错误播放器位置 0 被 Activity pause 保存，使用 force-stop 退出而未按 HOME/暂停。重启后历史仍为 `41:53` / 99% / 原时间戳，说明本次失败没有覆盖本地记录；不能计为播放/暂停同步验收。Worker 云读取正常，媒体源连接与同步服务是不同路径。需要可用媒体源后重做播放、暂停、休眠矩阵。
- 2026-11-11 无效播放器保护专项通过：前述 source error 场景显示 ExoPlayer 状态为 `1`（IDLE），旧实现若按 HOME 会把 `M()` 的 0 秒写进既有记录。新增 `PlaybackEvent.canFlushFinalPosition`，最终位置 flush 只接受状态 `3`（READY）或 `4`（ENDED）；IDLE/BUFFERING 记录诊断并保留原 DB 进度。源码、Smali、单测门禁及完整 APK 构建通过；Python 38/38、Worker 23/23、Java 版本/时钟/播放事件/决策 4 项通过。Sony 实机在媒体 source error 后按 HOME，日志为 `Final playback flush skipped: player state=1`，其后 Cloud PUT 成功；重新查看 Sony 历史，《小城良方》第29集仍为 `41:53`、99%、原时间戳 `2026-11-10 23:25:59`，未写入 0。专项行为测试使用同一 Java/Smali 内容的构建件；随后仅因新增构建镜像校验而重打包，最终 APK SHA-256 为 `dd17448cc6d4b116c3e7f15fccb5a15d93f59a51da984aff1e20965ce46cf17b`，已覆盖安装三台，安装包 hash 均与最终产物一致。Hisense/小米启动后 Cloud read 和 PUT 成功，无 `VerifyError` / `FATAL EXCEPTION`。这通过了“错误/无效播放器不能破坏旧进度”专项，不是有效播放时的暂停保存验收；可用媒体源后仍需测 READY/ENDED 的 pause/close。
