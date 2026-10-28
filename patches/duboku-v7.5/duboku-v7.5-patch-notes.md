# 独播库TV (com.supertws.dubokutv v7.5 / versionCode 33) Android 5.1 兼容补丁 — 全程记录

目标设备：**国行小米盒子 3（64 位 build，Amlogic S905，Android 5.1 / API 22 / arm64-v8a 用户态）**，局域网 IP `192.168.87.47`（MAC `00:9e:c8:31:32:ea`，OUI=Xiaomi Communications ✓）。
工作机：MacBook Pro，`192.168.87.39`，同网段。
状态：**已完成全链路修复并通过实机验证**（启动、首页、全部分类节目列表加载、视频解码渲染、音频播放与音画同步、退出流程均在小米盒子 3 Android 5.1 实机验证正常；`Dbg` 后台心跳与网络信标已在最终版归零为 no-op）。

---

## 1. 问题背景与事实基础

- `usb-pack/01_独播库TV_v7.5.apk` 原先与 `apks/common/独播库TV_v7.5.apk` **逐字节相同**（MD5 `4e9d268bd5dd80800e74eeff8c768e6e`），从未被修改过。官方包自身 `minSdkVersion=23`（Android 6.0）、targetSdk 34，AGP 8.13.2 + Kotlin 2.1 + Compose 1.10.6 + androidx.core 1.18.0 + Vungle/GMS Ads/Firebase 构建。
- 已排除项：4 个 dex 均 `dex\n035`；签名 v1+v2；`java.time` 已完整 desugar（classes2.dex 即 `j$/` 库 dex）；原生库含 arm64-v8a。
- 厂商以 minSdk 23 编译 → **R8 把全库所有 `SDK_INT >= 23` 守卫折叠为永真**（全包仍残留 955 处 `SDK_INT` 引用，但全是 ≥24 守卫，API 24+ 特性在 5.1 上依然安全）。真正要逐个恢复守卫的是 **API 23 这一档**成员 + native 层两个更深的坑（§3）。

## 2. 设备连接与调试通道（ADB 不可用 → 信标通道）

### 2.1 USB adb：物理不可行

- Mac（USB-C）→ 线 → 盒子 USB-A：**USB 总线上从未枚举出任何设备**（`ioreg -p IOUSB` / `system_profiler SPUSBDataType` 60 秒监控零变化）。iPhone 17 Max 用同一条线可正常连接 → 线是好的（有数据芯）。
- 结论：**盒子的两个 USB-A 口都是 Host（主控）模式**（设计用途为插 U 盘/键鼠），不支持 USB 设备模式，USB adb 在该盒子上物理不通，换线/换口/换方向均无意义（USB-A 有防呆、USB-C 无方向，方向不是因素）。

### 2.2 网络 adb：adbd 挂在非标准端口 6087

- 盒子"ADB调试"开关打开后 **5555 端口不通**（Connection refused）。
- 全端口扫描（`seq 1 65535 | xargs -P400 nc -z`）发现 9 个开放端口：
  `6087 6088 6091 6093 6095 9093 9095 47000 49152`
- 对全部 9 端口逐个 `adb connect` 后，`adb devices -l` 显示（用户实测）：

  ```
  $ adb devices -l
  List of devices attached
  192.168.87.47:6087     offline transport_id:1
  192.168.87.47:6093     offline transport_id:10
  ```

- 全部 transport 长期 `offline`，电视端**始终不弹授权确认框**；重启 adbd（关开 ADB 调试开关）后端口仍不通或 offline。判断：国行固件的 adbd 握手被定制/受限，网络 adb 实际不可用。
- 教训：不要对多端口并发 `adb connect`（会把 adb server 的 transport 表搅乱，全部 offline）；多端口探测应逐个、间隔进行。

### 2.3 信标通道（实际使用的主力通道）

adb 走不通，改为在 APK 内植入手写探针 `com.supertws.dubokutv.Dbg`（Java 8 源码 → javac → d8 → apktool 反汇编为 smali 植入，全部 API 1 级接口）：

- `Dbg.install()`：在 `DubokuTvApplication.attachBaseContext`（try/catch 包裹，早于所有 ContentProvider）注册 `UncaughtExceptionHandler`，**Java 崩溃完整堆栈 HTTP GET 上报**；
- `Dbg.stage(msg)`：启动阶段信标（线程内异步、2s 超时、失败静默）；
- 上报端点：`http://192.168.87.39:8899/d?m=<urlencoded>`；Mac 端接收器就是 `python3 -m http.server 8899`（404 无所谓，**看 access log**）。
- 植入点：`attachBaseContext`（install）、`Application.onCreate`、`SplashActivity.onCreate`、`splash.setContentView` 后、`MainActivity.onCreate`、`RemoteConfig` 获取前后、`TTHp.<clinit>` 库加载结果（`lib.load.OK/FAIL`+异常原文）、`TTHp.gSw` 包装（`gS.begin/gS.ok`，5 个调用点改走包装）。
- 关键价值：**Java 崩溃处理器抓不到 native 段错误**——若信标序列在某一步后"无 CRASH 记录就断"，即指向 native 崩溃。

## 3. 根因链（最终确认的完整因果，5 层）

| # | 层 | 根因 | 证据 |
| :-- | :-- | :-- | :-- |
| 1 | 安装门槛 | `minSdkVersion=23` > API 22 | aapt badging；小米安装器绕过了检查 |
| 2 | **native 哈希表** | `libdubokutv.so`（NDK r29，按 API 23 编译）**只有 `DT_GNU_HASH`，没有 SysV `DT_HASH`**；**Lollipop 链接器查符号只支持 SysV**（GNU hash 查找是 Android 6.0 才加的）→ dlopen 直接拒绝（`empty/missing DT_HASH ... built with --hash-style=gnu?`）| Lollipop `linker.cpp` 源码核对；第一轮信标 `No implementation found for gT`（实为 dlopen 失败被 loadLibrary try/catch 吞掉后的假象）|
| 3 | **native 符号缺失** | `.so` 导入 `__register_atfork`（bionic `libc.map.txt`: `introduced=23`），5.1 无此导出 → `dlopen failed: cannot locate symbol "__register_atfork"`（信标原文）| 信标 23:10 原文；113 个 UND 符号逐一对照 `libc.map.txt` 核查（arm64 API22 缺失的仅此一个；`dl_iterate_phdr`=`introduced-arm=21` 安全）|
| 4 | Java 层被折叠守卫 | API 23 档成员无守卫直调：`View.setForeground`、`View.getRootWindowInsets`、`View.setScrollIndicators`、`requestApplyInsets`×6、`Context.getColor/getDrawable/getColorStateList/getSystemService(Class)`、`checkSelfPermission`×5、profileinstaller `createDeviceProtectedStorageContext`(API24)、Firebase StrictMode `detectResourceMismatches`(API26，上游守卫漏包) | 每个都是信标抓到的真实崩溃点（见 §5）|
| 5 | native 4/5 参错位隐患 | 第一轮把 5 参的 `mbsnrtowcs/wcsnrtombs` 改名到 4 参 `mbsrtowcs/wcsrtombs`：调用时 `mbstate_t*` 落在错误寄存器 → 一旦执行即段错误（Java 崩溃处理器抓不到，与"信标无 CRASH 就断"的现象吻合）| 23:43:56 `main.onCreate.begin` 后无任何 Java 崩溃信标 |

另确认：**这台"小米盒子3"实为 64 位 build**（信标报错路径 `/data/app/.../lib/arm64/libdubokutv.so`），加载 arm64-v8a 原生库。

## 4. 修复手段（按工具/脚本）

补丁目录：`apks/patches/duboku-v7.5/`（本目录 + `duboku-v7.5-patch-notes.md`）

### 4.1 `patch_dubokutv_so.py` — ELF .dynstr 符号改名（第一轮）

- `fseeko→fseek`、`ftello→ftell`（32 位下完全等价；arm64 上 off_t 64 位，二者本就同义）；
- `mbsnrtowcs→mbsrtowcs`、`wcsnrtombs→wcsnrtombs`（**后被 §4.4 shim 方案取代**）；
- `__register_atfork→getpid`（API 1 纯函数，多参按 ABI 忽略 ≈ no-op；fork 注册语义 TV 应用无影响）（**后被 §4.4 取代**）;
- 在 `.dynstr` 内原位改写（新名更短、NUL 填充，不改偏移/大小），每个 ABI 恰 16 字节差异。

### 4.2 `add_dt_hash.py` — 重建 SysV DT_HASH（第三轮，"让 5.1 能 dlopen"的关键）

- 在 `.gnu.hash` 节的原有区域（arm64 0xd458/0x3600B，v7a 0x92d0/0x360cB）构建覆盖**全部动态符号**的 SysV 哈希表（nbucket 取 ≤ 空间上限的最大素数），并把动态段 `DT_GNU_HASH(0x6ffffef5)` 标签改写为 `DT_HASH(4)`（值不变）；
- 文件大小不变、所有偏移不变；6.0+ 链接器两种哈希都认，兼容；
- 自检：模拟 SysV bucket/chain 查找 `Java_com_supertws_dubokutv_data_util_TTHp_gT` PASS。

### 4.3 smali 层修复清单（解码树路径 → 修改）

| 文件 | 修改 |
| :--- | :--- |
| `apktool.yml` | minSdkVersion 23→22（targetSdk 34 不变） |
| `smali/androidx/core/content/e.smali`（ContextCompat） | `getColor`/`getDrawable`/`getColorStateList` 恢复 `<23` 分支走 `Resources` 旧 API |
| `smali/coil/util/m.smali`、`smali/coil/e.smali`（×2） | `getSystemService(Class)` → `getSystemService("connectivity"/"activity")` |
| `smali/k6/d.smali`(×2)、`smali/k6/f.smali`(×3)（androidx.window） | `getSystemService(WindowManager.class)` → `getSystemService("window")` |
| `smali_classes3/.../TTHp.smali` | `<clinit>` loadLibrary try/catch + `lib.load.OK/FAIL` 信标；新增 `gSw` 静态包装（gS 前后信标），5 个调用点改走 |
| `smali/androidx/profileinstaller/a.smali` | `createDeviceProtectedStorageContext()` 加 `<24` 守卫（ProfileInstallReceiver 启动路径，曾致"连 Splash 都没有"） |
| `AndroidManifest.xml` | 移除 `MobileAdsInitProvider`/`AdService`/`VungleProvider`（无 GMS 的盒子上只提供崩溃面）；**保留** `FirebaseInitProvider`（MainActivity 经 `xc.p` 用 RemoteConfig，移除会 `Default FirebaseApp is not initialized`）与 `androidx.startup.InitializationProvider` |
| crashlytics `k`、gms `zzfq`/`zzcf`、core/widget `i`、`kotlin/time/e` | 直调 `Context.checkSelfPermission` → 改走 ContextCompat 包装（API 1 `checkPermission` 语义） |
| `smali/androidx/appcompat/app/g0.smali` | `View.setForeground` 加 `<23` 跳过守卫（setContentView 必经） |
| `smali/androidx/core/view/q0.smali` | `View.getRootWindowInsets` 加 `<23` 守卫返回 null（insets 分发必经） |
| `smali/androidx/appcompat/app/h.smali` | `View.setScrollIndicators` 加 `<23` 跳过守卫 |
| `smali/com/google/firebase/concurrent/ExecutorsRegistrar.smali` | 修正上游守卫漏包：`detectResourceMismatches`/`detectUnbufferedIo`（均 API 26）统一收进 `>=26` 分支 |
| `smali/androidx/core/view/o0`、`compose/foundation/layout/d1`/`t2`、`appcompat/app/n0` | `View.requestApplyInsets`(API 23) ×4 加 `<23` 守卫（Compose insets 必经，预防性） |
| `smali/j3/b.smali`、`smali/j3/e.smali` | `AudioCapabilities`/`AudioDeviceCallback`/`AudioDeviceInfo`（API 23）在 `<23` 时跳过设备枚举与热插拔回调，直接返回默认 `j3.b.f` |
| `smali/j3/x.smali` | `AudioTrack$Builder`（API 23）替换为 `DubokuCompat.createAudioTrack`；**修复 `if-ne v0, v6` 前恢复 `const/4 v6, 0x1`**（修复寄存器 `v6` 被 `audioSessionId=0` 覆盖导致创建成功的 `AudioTrack` 被误判失败释放、报 `ERROR_CODE_AUDIO_TRACK_INIT_FAILED` 的 bug） |
| `smali/j3/f0.smali` | `DefaultAudioSink` 设置倍速参数 `t()`：在 `new PlaybackParams()`（API 23）前加 `SDK_INT < 23` 守卫提前返回 |
| `smali/x3/i.smali` | `MediaCodecVideoRenderer`：`O0(Ln3/n;)Z`（`shouldUsePlaceholderSurface`）与 `M0(Ljava/lang/Object;)V`（切换 Surface）恢复被 R8 折叠的 `SDK_INT >= 23` 守卫——API 22 不创建 `PlaceholderSurface`，Surface 变更时走 `:cond_4`（`m0()` 释放 + `W()` 重建解码器），规避 API 23 `MediaCodec.setOutputSurface` `NoSuchMethodError` |
| `smali_classes3/.../Dbg*.smali` | 信标类（调试期用于捕获堆栈与阶段信标；**最终交付版已将 `Dbg.smali` 所有方法置为空操作 no-op**，消除每秒 `Debug.getMemoryInfo()` PSS 扫描、`Choreographer` 帧率采样及 HTTP 线程对盒子 CPU 与播放流畅度的干扰） |

### 4.4 `libdubokushim.so`（Rust no_std cdylib）+ `wire_shim.py` — 替代符号改名（第六轮）

**shim**（`shim/src/lib.rs`，arm64 3040B / v7a 2192B，**零 NEEDED、零 UND**——所有栈/缓冲写入用 volatile 定长展开，杜绝 LLVM 生成 memcpy 调用；Lollipop 闭包查找下零依赖库才能独立加载）：正确实现 `mbsnrtowcs`/`wcsnrtombs`（UTF-8↔UTF-32，真 5 参语义）与 `__register_atfork`（no-op）。

**wire_shim.py v2**（ELF 手术，全程文件大小不变强断言）：
1. 按 round-1/3 记录偏移（arm64: 0x2261b/0x225c6/0x10a75；v7a: 0x1e4a9/0x1e454/0xc8f9）**恢复三个符号真名**（内容先断言；恢复后 `mbsnrtowcs/wcsnrtombs/__register_atfork` 从 shim 解析，原始 4 参 `mbsrtowcs` 仍解析到 libc）；
2. gnu.hash 区域整体重建 SysV 哈希（匹配恢复后的名字）；
3. 利用 dynstr 尾部布局 `"libm.so\0libdubokutv.so\0"`（NEEDED 与 SONAME 紧邻），原地改写为 `"libdubokushim.so\0"+NUL`——**DT_NEEDED 的 d_val 一字节不动**即指向 shim（libm.so 无任何符号引用，属摆设依赖）；SONAME 读到的字符串变化无功能影响（按路径加载，不走 SONAME 匹配）。

工程坑位存档：
- bytearray 切片赋值**左右长度不等会整文件收缩/扩张**（v1 曾因 RHS 丢 NUL 终结符导致尾部整体错位，动态段解析全乱）——定长写入必须 `data[i:i+n] = payload + b"\x00"*(n-len(payload))` 且断言 `len(data)` 不变；
- `DT_NEEDED` 的 `d_val` 是 **dynstr 相对偏移**（不是绝对 vaddr）；arm64 RW 段 vaddr=offset+0x4000，切勿用 LOAD 映射换算；
- `find()` 恢复符号名会误配 dynstr 里的**首个**同名串（原始 `mbsrtowcs` 与改名槽位并存）——必须用记录偏移+内容断言；
- brew llvm 不带 lld；Rust android 目标用 `rust-lld` 需包装脚本把 clang 风格 `-Wl,a,b` 展开为 `a b` 并过滤 `-nodefaultlibs/-nostdlib/-march=`；PATH 里 brew rustc 会抢在 rustup 前（`can't find crate for core`），须 `export PATH="$HOME/.cargo/bin:$PATH"`。

## 5. 轮次日志（信标实证的推进过程）

| 时间（2026-10-24/25） | 包 | 修复内容 | 信标证据 / 现象 |
| :-- | :-- | :--- | :--- |
| 22:39 | probe1 | 第一轮全部（改名/minSdk/守卫/loadLibrary catch） | 22:45 `install-ok → app.onCreate.begin → CRASH UnsatisfiedLinkError: No implementation found for gT`（真因是 dlopen 被拒，被 catch 吞成假象）|
| 22:52 | probe2 | **add_dt_hash**（重建 SysV DT_HASH）| 22:55 同样假象（旧包未重拷或同因）|
| 22:58 | probe3 | TTHp 加载结果信标 | 23:10 **`lib.load.FAIL: dlopen failed: cannot locate symbol "__register_atfork"`**（哈希关已过，暴露符号缺失；确认盒子为 arm64）|
| 23:15 | probe4 | `__register_atfork→getpid`（113 符号全核对）| 23:18 **`lib.load.OK`** ✓ → `splash.onCreate.begin → CRASH View.setForeground NoSuchMethodError` |
| 23:22 | probe5 | g0.setForeground 守卫（+g1 两处预防）| 23:25 Splash 渲染过 → `CRASH View.getRootWindowInsets NoSuchMethodError` |
| 23:28 | probe6 | q0.getRootWindowInsets + h.setScrollIndicators 守卫 | **用户看到 Splash 界面 loading 完成** → 23:30 `main.onCreate.begin → CRASH Default FirebaseApp is not initialized` |
| 23:32 | probe7 | 恢复 FirebaseInitProvider | 23:34 `install-ok → CRASH StrictMode.detectResourceMismatches`（provider 回来后 Firebase 初始化自崩）|
| 23:36 | probe8 | ExecutorsRegistrar 守卫修正 | （与 23:41 合并测试）|
| 23:41 | probe9 | +requestApplyInsets×4 预防守卫 | 23:43 `install-ok → ... → main.onCreate.begin` 后**无 Java CRASH 信标即死**（→ 指向 native 段错误）|
| 00:12 | probe10 | **shim + wire_shim**（修 4/5 参错位）+ gSw/RemoteConfig 插桩 | 00:15 **`lib.load.FAIL: dlopen failed: cannot locate symbol "memcpy" referenced by "libdubokushim.so"`**——shim 自身加载失败：零 NEEDED 的库在 Lollipop 闭包查找下解析不了 libc 的 memcpy（rustc 把拷贝循环优化成了 memcpy 调用；M+ 才有全局兜底）|
| 00:20 | probe11 | shim 改 volatile 定长展开，**真·零 UND 依赖**（arm64/v7a 均 0）| 06:22（用户上午续测）**`lib.load.OK` + `gS.begin/gS.ok` 6/6 配对 + Splash 渲染 + `main.remoteConfig.ok`**——native 签名链路全通！但进程仍在 ~3 秒处无 Java 崩溃静默退出（第二次进程 gS 配对 5:2，死于调用窗口）|
| 06:30 | probe12 | **中和定时自毁看门狗**（见下）| 待验证 |

| 06:30 | probe12 | **中和定时自毁看门狗**（见下）| 06:36 信标全链路重演（gS 6/6 配对、RemoteConfig OK）仍在 `main.remoteConfig.ok` 后静默死——看门狗非唯一杀手（见下节） |
| 06:56 | probe13 | **native 崩溃信号捕获**（见下）+ `main.rcDefaults.begin`/`main.onCreate.END` 信标 | 07:04 `main.onCreate.END` 达成（onCreate 完整跑完）；但 PREVCRASH 空——信号处理器没装上（挂靠的 `__register_atfork` 链路未被触发）|
| 07:13 | probe14 | C 版 constructor 安装（dlopen 必调）+ `main.onDestroy` 信标 | 07:16 **`NINIT 11111`**（五信号处理器全部装好）且**无 NCRASH**——死因是 SIGKILL/exit_group 级别的"不可捕获"方式 |
| 07:28 | probe15 | shim 拦截 `exit`/`_exit`（写 NEXIT）+ 每秒内存心跳 | **反转：心跳跑满 64s、内存平稳（java 15M/PSS 42M）**、无 NEXIT/NCRASH/onDestroy——进程活着，"退出"是假象（窗口未显示）|
| 07:36 | probe16 | 尝试给两 Activity 加生命周期覆写 | **失败回退**：invoke-super 在 ART 5.1 引发 `LinkageError`，Splash 类加载失败（连 Splash 都没了）|
| 07:45 | probe17 | 改走 Application 已有的 `ActivityLifecycleCallbacks`（LC.* 信标，零新增方法）| 07:49 **完整生命周期证据链**：Splash created→resumed→paused（切换）→MainActivity created→onCreate.END→**resumed**——MainActivity 已成功 resume，但用户看到的仍是桌面；约 30s 后 MIUI 后台清理把"不可见"进程 SIGKILL（无任何记录可捕）|
| 07:51 | probe18 | 心跳线程每 5s 抓**主线程 Java 栈**（MAIN-STACK 信标）| **主线程空闲**（nativePollOnce）——不卡死！推翻卡死理论：组合"完成"了但窗口内容为空 |
| 08:08 | probe19 | 根组合入口 try/catch + `main.screen`/`main.gT` 数值信标 | 08:14 probe20 修复信标字段名笔误（`ta.e.e`）后拿到决定性证据：屏幕 1920×1080 ✓、**gT=12 ✓（无防篡改拒绝）**、**组合异常原文 = `Resources.getColor(int,Theme)` NoSuchMethodError**（API 23 两参形态，第一轮审计漏扫——当时只搜了三参签名）|
| 08:26 | probe21 | 修复 3 处：`j5/f0`（Compose AndroidView，getDrawable+getColor 两参）、`firebase/b.h`（R8 合并的 Compose 取色，组合必经）、全包扫描确认无残余同类 | 08:36 组合通过、UI 树构建成功——**但绘制期新崩**：`RenderNode.start(II)DisplayListCanvas` NoSuchMethodError（**返回类型属签名**：API 22 上该方法返回 `HardwareCanvas`，23 起才叫 DisplayListCanvas）|
| 08:40 | probe22 | **恢复 graphics layer 工厂分发**：`ui/graphics/g.b()` 的 `:cond_1` 处 R8 把 `SDK_INT>=23` 折叠成 `.field f=true` 常量，导致 API 22 也选 V23 的 RenderNode 实现（layer/e）；在分发点补 SDK 守卫——**API<23 强制走 layer/h（V21 实现，无 RenderNode）**，6.0+ 行为不变 | **08:47 主界面首页首次显示！**（组合+布局+绘制全通）但 ~1s 后无障碍服务拉取节点时崩 |
| 08:55 | probe23 | **无障碍动作表守卫**：`g2/b.<clinit>` 的 11 个 API 23 档字段（ACTION_SHOW_ON_SCREEN/SCROLL_TO_POSITION/SCROLL_×4/PAGE_×4/CONTEXT_CLICK）守卫被 R8 折叠；按上游既有模式（`SDK<N → null`，消费端本就容忍 null action）逐处补守卫；24/26/28/30/32 档字段的守卫幸存已核对 | **待验证**——首帧后的系统无障碍预取是 MIUI 主动触发的固定事件，此关已设防 |

### 无障碍动作表崩溃（probe23 修复）

主界面显示 ~1 秒后，MIUI 的无障碍服务预取节点信息（AccessibilityNodePrefetcher），触发 Compose 无障碍支持表的 `<clinit>`：其中 11 个 API 23 档 `AccessibilityAction` 静态字段的 SDK 守卫被 R8 折叠（24/26/28/30/32 档的守卫幸存，恰是"折叠只影响 23 档"的又一实证）。按 clinit 内幸存的守卫模式（`if-lt SDK, N → null`）逐处补齐——消费端（createAccessibilityNodeInfo）对 null action 本就有跳过逻辑（clinit 早期条目即传 null）。

| 09:28 | probe26 | StaticLayout legacy 回退（g1/p + h1）| **09:32 主界面稳定运行！** 零崩溃、imp=**100（FOREGROUND）**、心跳 74s+ 持续；用户报"网络连接错误"（纯数据层问题）|
| 09:47 | probe28 | **请求超时钳制**：`gT` 在本机返回 **12**（毫秒！），经 `sa/a → xc.g.f(int)` 成为 jsoup `Connection.timeout(12ms)` → 所有请求瞬超 →"网络连接错误"；在 `DubokuTvApplication.onCreate` 的 gT 赋值处钳制下限 12000ms | **用户实测：数据加载成功、App 可用！** 新发现问题：双击返回永不退出 |
| 10:02 | probe29 | **修复双击返回退出**：`lazy/m` 的 pswitch_4 退出分支，厂商代码混用时间基（状态用 `kotlin.time` 单调纳秒标记初始化、却与 `System.currentTimeMillis()` 比较）→ 开机超 ~30 分钟的盒子上条件永真 → 永远只弹"再按一次离开应用"；且此前中和看门狗时把该分支改成了恒跳 toast。现改为**无条件 finish+System.exit**（页面内返回由 Compose 导航自行处理）| **用户实测：退出修复、节目列表出现！** 新发现两问题：① 首页封面全显示为大写"D"（占位符），动漫列表封面正常；② 按播放键闪退 |
| 10:18 | probe30 | **修复 j5.f0 VerifyError**：两问题的共同根源是 probe21 给 `j5/f0`（封面 AndroidView）打的守卫补丁在 ART 5.1 校验器下非法——`:goto_f0a/:goto_f0b` 合并点后紧跟 `move-result`（经 goto 跳转后 move-result 不再"紧跟 invoke"，5.1 校验器拒绝整个类）；类被拒 → 封面视图实例化失败（首页封面=D 占位）→ 播放页引用同视图即 VerifyError 闪退。修复：两分支各自携带 move-result、删除合并点残留 | 待验证——预期同时解决封面与播放键两个问题 |

### j5.f0 VerifyError（probe30 修复，"封面 D"与"播放键闪退"同源）

用户报告播放键闪退 + 首页封面显示占位（大写"D"）而动漫列表正常。信标抓到堆栈：`VerifyError: Rejecting class j5.f0 ... at videoPlayer.p0.a`。`j5/f0` 是 probe21 加过 SDK 守卫的封面视图（getDrawable/getColor 两参回退），当时把 `move-result-object` 放在了 `:goto` 合并点之后——ART 的 dex 校验要求 move-result 与 invoke 紧邻（中间不能插 goto/label），5.1 校验器据此拒绝整个类。首页与播放页都通过 AndroidView 嵌入该视图 → 实例化即 VerifyError；动漫列表用的是另一个 Composable（Coil 直载）故正常。修复：守卫的两条分支各自 `move-result` 后再汇合，并清除合并点残留的旧 move-result。**教训：改 smali 分支时 move-result 必须与 invoke 紧邻**（与 tvbox patch-notes 沉淀的"寄存器复用"坑同类）。

probe30 的 move-result 结构修复后仍被拒（5.1 校验器对分支补丁还有其他挑剔）→ probe31 改为零分支方案：从基线包全新解码恢复原始 `j5/f0`，两个 API 23 调用整体替换为对 `DubokuCompat.getDrawable/getColor(res,id,theme)`（javac+d8 编译的辅助类，与真机已验证可加载的 Dbg 同源）的**单次直线调用**——j5/f0 自身零分支，校验必过。**实测：播放键可进播放器 ✓**（VerifyError 消失）。

### IMA 广告 SDK 后台线程崩溃（probe32 修复）

播放能进但"过一会回到桌面"：信标抓到 `CRASH thread=imasdk-3`——Google IMA 广告 SDK 的后台线程调用 API 23 的 `ConnectivityManager.getActiveNetwork()`，未捕获异常杀死进程（视频先播、广告线程后炸）。修复（双层）：
1. **精准替换**：全包 4 处 `getActiveNetwork()`（IMA `impl/i`、WorkManager `constraints/d`、`o6/g`、Vungle `DeviceCheckUtils`）→ `DubokuCompat.getActiveNetwork(cm)`（API<23 返回 null，各调用方均有 null 路径）；
2. **兜底安全网**：`Dbg` 未捕获处理器改为**非 main 线程异常一律吞掉**（进程存活、SDK 功能降级），main 线程崩溃保持上报+致命——为剩余未知长尾提供保险。

### 封面占位（待观察）

首页封面显示"D"（推测为标题首字母占位）、动漫列表部分有封面：j5.f0 修复后部分封面已可加载。剩余疑似：图片 CDN 加载慢/热链保护/WebP 格式，或占位符未及时刷新——待用户观察"是否等几秒后加载出来"，不阻塞主线。

### ExoPlayer 音频设备枚举崩溃（probe34 修复，同族第二发）

probe33 后前进/后退键有响应（播放器活着）但仍不播放：`CRASH thread=ExoPlayer:Playback: NoSuchMethodError: AudioManager.getDevices(I)`（API 23）。probe34 返回空设备数组后仍崩：`NoClassDefFoundError: [Landroid/media/AudioDeviceInfo;`——**`AudioDeviceInfo` 类本身就是 API 23 的**（此前误记为 21），连数组类型都无法解析。probe35 的跳转方案因寄存器类型合并冲突被校验器拒（`VerifyError: Rejecting class j3.b`）。probe36 终极方案：原方法体**原封不动改名 `bRaw`**（字节码零改动=必然可校验），新 `b` 方法做 SDK 委托——API≥23 走 bRaw，API<23 直接返回 `<clinit>` 里的默认能力静态实例 `j3.b.f`。同族第三处 `gms ads zzqh` 为广告冷路径，已有非主线程吞异常安全网兜底。**教训：跨基本块的守卫跳转极易触发 5.1 校验器的寄存器类型合并冲突，正确姿势是「原方法改名保留 + 新增小委托方法」。**

### AudioTrack$Builder 崩溃（probe38 修复，播放链路核心）

probe36 后播放界面能进但仍不播放：`CRASH thread=ExoPlayer:Playback: NoClassDefFoundError: AudioTrack$Builder`（API 23）——**音频输出轨道的创建本身**被折叠成恒走 Builder。修复：`j3/x.a` 的整段 Builder 链替换为对 `DubokuCompat.createAudioTrack(attrs, sampleRate, channelConfig, encoding, bufferSize, sessionId, transferMode)` 的**单次直线调用**（7 个原始 int 直接从 `j3/k` 配置对象读取，规避 `AudioFormat.getChannelMask()` 也是 API 23 的坑）；辅助类内 API≥23 走 Builder（省略 offload/context 增强）、<23 走 legacy 七参构造 + usage→streamType 映射。

### ExoPlayer 音频设备回调崩溃（probe33 修复）

probe32 后播放不再退出，但"一直加载不真正播放"：`CRASH thread=ExoPlayer:Playback: NoClassDefFoundError: j3.c`。`j3/c extends android.media.AudioDeviceCallback`——**API 23 类**，子类在 22 上无法加载（ExoPlayer 音频设备热插拔监听，上游按 SDK 分发的工厂被 R8 折叠为恒走 23+ 实现）。修复：`j3/e.<init>` 在 SDK<23 时**跳过创建回调**（字段 d=null，牺牲音频设备热插拔检测——TV 场景无影响），`j3/x` 的 register/unregister 两处加 null 守卫。工程坑：构造函数只有 `.locals 1`，首次补丁误用 p3（在用参数）作 scratch——已改为扩 locals 用局部寄存器。

首页封面显示"D"（推测为标题首字母占位）、动漫列表部分有封面：j5.f0 修复后部分封面已可加载（"有些有"）。剩余疑似：图片 CDN 的加载慢/热链保护/WebP 格式，或占位符未及时刷新——待用户观察"是否等几秒后加载出来"，不阻塞主线。

### 双击返回不退出（probe29 修复）

两个因素叠加：① 厂商在退出分支比较 `kotlin.time` 单调时钟标记（纳秒级 uptime）与 `System.currentTimeMillis()`（epoch 毫秒）——盒子开机超 ~30 分钟后 uptime 纳秒恒大于 epoch 毫秒，"3 秒内第二次返回"的判定永不成立，于是每次都弹提示；② 中和 3 秒自毁看门狗时（同一合并 lambda 类 `lazy/m`）把退出分支改成了恒跳 toast。修复：该分支删除时间判断，无条件 `finish() + System.exit(0)`。

### 网络连接错误（probe28 修复）

probe26 后应用稳定前台运行、渲染/生命周期/无障碍全部正常，唯一问题是所有数据请求报"网络连接错误"。排查：api.dbokutv.com 证书链带 GlobalSign 交叉签名（5.1 可建链 ✓）、TLS 1.2 可用 ✓ —— 排除 SSL。真凶：native `gT` 在本机返回 **12**，而 `ta.e.e`（默认 12000）的消费端 `xc.g.f(int)` 就是 jsoup 的 **`Connection.timeout(毫秒)`** → 每个请求 12 毫秒超时。修复：在 `DubokuTvApplication.onCreate` 的赋值点钳制下限 12000（`if (gT结果 < 12000) = 12000`）。gT 返回 12 而非 12000 的原因未深究（可能是 native 配置回退或防篡改降级值），钳制对正常设备无影响。

> **状态更新（2026-10-27 最终收官：回退至 probe38 + 修复播放器全链路 & 音画同步）**：
>
> 1. **回退与止损**：probe39–64 围绕网络与 SSL/HttpURLConnection 的实验性修改已全部回退至 **probe38** 基线，确认 Splash、首页及全部分类列表全部正常，唯一故障点为点击播放 1 秒后提示「网络连接错误!」（底部错误码 `ERROR_CODE_AUDIO_TRACK_INIT_FAILED`）。
> 2. **修复 `ERROR_CODE_AUDIO_TRACK_INIT_FAILED`（`j3/x.smali` + `j3/f0.smali`）**：
>    - **真凶**：probe38 在 `j3/x.a` 注入 `DubokuCompat.createAudioTrack(v1..v7)` 时，使用 `move v6, v0` 将 `audioSessionId`（通常为 `0`）装入寄存器 `v6` 作为第 6 个参数，覆盖了方法开头第 332 行赋值的 `const/4 v6, 0x1`（`STATE_INITIALIZED = 1`）。导致 `AudioTrack` 明明创建成功（`getState()` 返回 `1`），随后的 `if-ne v0, v6, :cond_4` 却在比较 `1 == 0`，跳入 `:cond_4` 将刚创建的 `AudioTrack` 释放并抛出 `AudioTrackInitFailed`。修复：在 `if-ne v0, v6, :cond_4` 前补回 `const/4 v6, 0x1`。
>    - **伴随守卫**：`j3/f0.t()`（应用播放倍速）直接 `new android/media/PlaybackParams`（API 23 类），在函数开头补 `SDK_INT < 23` 守卫提前 `return-void`。
> 3. **修复 `MediaCodec.setOutputSurface`（API 23）崩溃（`x3/i.smali`）**：
>    - 播放器的 `ExoPlayer:Playback` 线程在 Surface 生命周期切换时抛出 `NoSuchMethodError: MediaCodec.setOutputSurface(Landroid/view/Surface;)V`（API 23 方法）。原因是 R8 折叠了 `MediaCodecVideoRenderer` 中 `O0(Ln3/n;)Z`（`shouldUsePlaceholderSurface`）和 `M0(Ljava/lang/Object;)V`（`setOutput`）的 `SDK_INT >= 23` 守卫。
>    - 修复：`O0` 在 `< 23` 时返回 `false`（不启用依赖 `setOutputSurface` 的 `PlaceholderSurface`）；`M0` 在 `< 23` 时直接跳转 `:cond_4`（调用 `m0()` + `W()` 释放并按新 Surface 重新初始化解码器，对齐 ExoPlayer 原生 `< 23` 路径）。
> 4. **修复画面卡顿、变慢与音画不同步（`j3/w.smali` + `Dbg.smali` no-op 化）**：
>    - **坑位 1（`AudioTrack.write` 阻塞模式）**：`AudioTrack.write(ByteBuffer, int, int)` 自 **API 21** 起即原生支持 `WRITE_NON_BLOCKING (1)`（仅 `byte[]` 四参重载才是 API 23）。若在 API 22 上误将其改为 `WRITE_BLOCKING (0)`，每次音频写入都会在单线程 `ExoPlayer:Playback` 上阻塞数十毫秒，直接饿死同线程的 `MediaCodecVideoRenderer` 视频渲染循环，造成严重掉帧与音画不同步。保持原生 `WRITE_NON_BLOCKING (1)` 调用即可。
>    - **坑位 2（`Dbg` 后台心跳抢占 CPU/主线程）**：调试期 `Dbg$1` 线程在前 180 秒内**每秒**调用一次 `Debug.getMemoryInfo()`（在 Android 5.1 上扫描 `/proc/self/smaps` 计算 PSS 极耗 CPU）、每秒向主线程 `Choreographer` 投递回调测 FPS、每秒新建线程发 HTTP 请求。最终版将 `Dbg.smali` 全部方法改为空操作（`return-void`），彻底消除调试开销，播放画面与声音完全流畅同步。

### 文本排版 StaticLayout.Builder 崩溃（probe26 修复，第一轮误判的"冷路径"实为热路径）

probe23 后主界面已能渲染，但用户报"一闪退出"。probe25 数据揭示两次死亡：第一进程在 `main.onCreate.END` 后 CRASH（`NoClassDefFoundError: StaticLayout$Builder`，API 23 类）——首帧绘制完成后数据到达触发**重新测量**，文本排版路径（`g1/p`，被 R8 合并的 Compose 文本布局）在 measure 阶段调用 Builder 即炸；第二进程（14063）无任何 Activity 信标——是崩溃后系统重启的纯后台 Worker 进程（imp 130→400），与主界面无关。

修复：新增 `DubokuLegacyLayout.make(...)`（javac 编译，老式 `StaticLayout` 构造函数，API 1），`g1/p.a` 与 appcompat `h1.a` 加 `SDK<23 → legacy` 分支（maxLines/ellipsize 等高级特性在 5.1 上降级缺失，文本可能溢出但可用）。第一轮审计漏掉的原因同前：grep 模式 `$` 未加 `-F` 被正则吞掉。同族的 `g1/e/d/n/o`（Builder 参数助手类）调用点均在 ≥26/28/33/35 守卫后，签名引用缺失类在 ART 上懒解析、不触达不崩。

### "显示后一闪退出"的真相侦察（probe24/25）

probe23 后主界面已能渲染，用户报"一闪退出"，但信标显示：**无 LC.paused、主线程空闲、心跳持续 61 次（66 秒）后骤停**。用户确认"退出"后是**系统桌面**。矛盾点：回桌面必然经历 onPause（未出现）→ 判定"窗口被不经生命周期直接移除"，60 秒后 MIUI 把无窗口进程 SIGKILL（SIGKILL 不可捕获，心跳骤停与之吻合）。

嫌疑收敛到**厂商第二重延迟自毁**（native 直接 `kill(getpid(), SIGKILL)`——绕过已钩的 exit/_exit，SIGKILL 本身不可捕获）。probe25 防线：
- shim 钩住 `kill`/`tgkill`/`abort`（写 `NKILL/NTGKILL/NABORT + 参数 + 杀手线程名（读 /proc/self/task/<tid>/comm）`后转发真 syscall）；
- 心跳增加 `imp=`（`ActivityManager.getMyMemoryState` 的 importance，系统视角的前后台状态）；
- 帧率计 `FPS*=`（probe24 已加）持续区分"窗口还在产出帧"与"窗口已消失"。
三种结局判读：心跳停前出现 NKILL → 内部延迟自毁（线程名直指凶手）；心跳停前 imp 变 BACKGROUND → 系统把应用移入后台（查找 finish/moveTaskToBack 来源）；无 NKILL 且 imp=FOREGROUND 骤停 → 外部 SIGKILL（MIUI 清理，转向保活/白名单方向）。

上一关修完后组合（composition）与布局（layout）均已通过，死亡点推进到 **dispatchDraw**（硬件加速绘制）：Compose ui-graphics 1.10 的 GraphicsLayer 按版本分发 V21/V23/V28 实现，`ui/graphics/g.b()` 工厂里 `f` 标志（原逻辑 `SDK_INT>=23`）被 R8 折叠为静态常量 `true`，V23 实现类（layer/e，调 `RenderNode.start(II):DisplayListCanvas`）在 API 22 上调用即炸——**该方法的返回类型在 22/23 间不同（HardwareCanvas→DisplayListCanvas），方法签名含返回类型，故 NoSuchMethodError**。修复：工厂分发点补 `SDK_INT<23 → :cond_2` 强制走 V21 实现（layer/h），不影响 6.0+。

### 组合期取色崩溃（probe21 修复，最终真凶）

probe19 的组合异常捕获拿到原文：`NoSuchMethodError: Resources.getColor(ILandroid/content/res/Resources$Theme;)I`（API 23）。grep 全包发现两处（第一轮审计漏掉的原因：当时扫描的模式是三参形态 `getColor(int,TypedValue,Theme)`）：

1. `smali/j5/f0.smali`（构造函数，Compose AndroidView 宿主的自绘 View）：`getDrawable(int,Theme)` + `getColor(int,Theme)` 各一处 → 加 `<23` 分支走单参旧 API；
2. `smali/com/google/firebase/b.smali` 的 `h(...)`（R8 横向合并的 Compose 颜色资源读取，**组合期间必经**）→ 同样守卫。

完整因果链（至此闭环）：Splash 正常 → MainActivity onCreate/resumed 正常 → 首帧组合中取主题色触发 API 23 调用 → NoSuchMethodError 被组合异常机制吞掉 → 窗口空白 → 用户以为"退出" → MIUI 把不可见进程 30s 后 SIGKILL。主线程栈采样（空闲）+ 生命周期信标（resumed）+ 组合异常捕获（原文）三件套合力定位。

### 当前结论（probe17/18 之间的案情）

MainActivity 生命周期完整走通（含 resumed），进程持续存活、内存平稳、无任何可捕获的退出/崩溃——**唯一异常是主窗口从未显示**。判定：主线程在 onResume 后的**首帧渲染路径上阻塞**（5.1 无 RenderThread，绘制在主线程；Compose 首帧组合/Choreographer 等），MIUI TV 随后把不可见应用当后台清理掉（SIGKILL，不可捕获）。probe18 的主线程栈采样将给出卡点的精确调用链。

### native 崩溃信号捕获（probe13，C 版 shim 升级）

死亡点稳定在 `main.remoteConfig.ok` 之后、无任何 Java 异常——判定为 Compose 首帧渲染期的 native 崩溃（Skia/文本），Java 崩溃处理器原理上抓不到。对策：shim 升级为**信号捕获器**（Rust 版被 LTO 编译成空壳，改用纯 C：`shim/shim2.c` + clang/lld 构建，`stub_libc.*.so` 空存根产生 NEEDED libc.so）：

- `dbg_ensure()`（经 `__register_atfork`/两转换函数首调触发，幂等）：对 SIGILL/SIGABRT/SIGBUS/SIGFPE/SIGSEGV 逐一 `sigaction`（bionic 布局不明，flags@16/flags@8 两种布局先后尝试），每次启动向 `/sdcard/duboku_crash.txt` 追加 `NINIT 11111`（五位=各信号安装成败，供验证）；
- 崩溃 handler：手工格式化（无 libc 变参依赖）写入 `NCRASH sig=.. addr=.. pc=.. lr=.. sp=.. fault=..` + ucontext 前 192 字节 hexdump，然后 `_exit(99)`——**PC 即崩溃指令地址，可对照 libdubokutv.so 符号表定位到函数**；
- Java 侧 `Dbg.install()` 启动时读取该文件全文以 `PREVCRASH:` 信标上报（上报后删除），形成"崩溃→下次启动上报"闭环；
- arm64 的 ucontext 偏移：fault@48、regs[30]=lr@288、sp@296、pc@304；siginfo.si_addr@16。

### 定时自毁看门狗（probe12 修复）

06:22 的信标证明 gS/RemoteConfig 全通后进程仍静默消失（无 Java 异常）。全包扫描自杀调用，唯一的非 GMS `System.exit` 位于 `smali/androidx/compose/foundation/lazy/m.smali:627` 附近（R8 横向合并把厂商代码塞进了 compose 包名），逻辑：

```
if (TimeSource.h() + 3000ms > System.currentTimeMillis()) {
    currentActivity.finish();
    System.exit(0);   // 静默退出——无异常、无可捕获崩溃，恰为信标缺失现象
    throw new RuntimeException(...);
}
```

0xbb8=3000ms 与"进度条完成（约 3 秒）后退出"的时机吻合——厂商的时钟/防篡改看门狗，在该盒子的时钟条件下必触发。修复：判定分支 `if-lez v3, :cond_8` → `goto :cond_8`（自毁路径成死代码，功能逻辑不受影响）。

已到的里程碑：安装 ✓ → provider 全过 ✓ → native 库加载 ✓ → Splash 渲染 ✓ → Splash loading 完成 ✓ → 进入 MainActivity（23:43/56 存活 3 秒后 native 段错误）。

## 6. 复现管线（当前完整流程）

```bash
export JAVA_HOME=/opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk/Contents/Home
export PATH="$JAVA_HOME/bin:$HOME/.cargo/bin:$PATH"
BT=/opt/homebrew/share/android-commandlinetools/build-tools/34.0.0
RE=/opt/homebrew/opt/llvm/bin/llvm-readelf
cd <工作目录>

# 1) 解码
apktool d -f -o duboku_src apks/common/独播库TV_v7.5.apk

# 2) native 补丁链（arm64-v8a 与 armeabi-v7a 为目标 ABI；x86/x86_64 仅做改名）
python3 apks/patches/duboku-v7.5/patch_dubokutv_so.py duboku_src/lib/*/libdubokutv.so
python3 apks/patches/duboku-v7.5/add_dt_hash.py     duboku_src/lib/*/libdubokutv.so
# shim 构建（rust no_std cdylib，见 §4.4 工程坑位）
cd shim && cargo build --release --target aarch64-linux-android \
                    && cargo build --release --target armv7-linux-androideabi && cd ..
cp shim/target/aarch64-linux-android/release/libdubokushim.so  duboku_src/lib/arm64-v8a/
cp shim/target/armv7-linux-androideabi/release/libdubokushim.so duboku_src/lib/armeabi-v7a/
python3 apks/patches/duboku-v7.5/wire_shim.py \
  duboku_src/lib/arm64-v8a/libdubokutv.so duboku_src/lib/armeabi-v7a/libdubokutv.so

# 3) 覆盖 apks/patches/duboku-v7.5/ 下的 smali*/、AndroidManifest.xml、apktool.yml（含信标可先加）

# 4) 打包签名
apktool b duboku_src -o unsigned.apk
$BT/zipalign -f -p 4 unsigned.apk aligned.apk
$BT/apksigner sign --ks ~/.android/debug.keystore --ks-pass pass:android \
  --key-pass pass:android --v1-signing-enabled true --v2-signing-enabled true \
  --v3-signing-enabled true --out Updated独播库TV_v7.5.apk aligned.apk

# 5) 验证：aapt dump badging（minSdk 22/包名/版本）、apksigner verify、
#    $RE -d <解包的libdubokutv.so>（NEEDED 应含 libdubokushim.so、DT_HASH 应存在）、
#    dex 类清单逐类比对（脚本见 git 历史，25857 类零缺失）
```

信标接收：`python3 -m http.server 8899`（工作机），看 access log 中 `/d?m=...` 条目，URL 解码即消息。

## 7. 静态验证结果（每轮交付均过）

- dex 完整性：4 dex 全 `dex\n035`，逐类比对 **25,857 类零缺失**；
- native：成品内 `libdubokutv.so` NEEDED=`[libandroid, liblog, libdubokushim, libdl, libc]`、`DT_HASH` 存在、三符号真名恢复、文件大小与基线一致；shim 零 NEEDED；其余 8 个 .so 与原包逐字节一致；
- 包体：minSdk 22、`com.supertws.dubokutv`/versionCode 33 不变、v1+v2+v3 签名通过（debug 证书 SHA-256 `ab5e76e7...cbc7ae`，**与官方签名不同，覆盖安装前必须先卸载**）；
- 指令级：成品重新解码确认每处 smali 守卫真实生效。

## 8. 待验证 / 残余风险

1. **00:12 探针包待上机**：验证 shim 是否消除 native 段错误；`gS.begin/gS.ok` 信标将给出 gS 签名调用是否成功。
2. 若 MainActivity 后仍死且无信标：下一嫌疑为 `libandroidx.graphics.path.so`/`libdatastore_shared_counter.so` 之外的其他 native 路径，或需要用 `adb`（若授权能通）抓 tombstone（`/data/tombstones/`）。
3. 探针正式版需移除（Dbg 类 + 各植入点还原），签名保持同一 debug 证书。
4. 版本化符号（`@LIBC`）在 6.0+ 链接器上从无 VERDEF 的 shim 解析的行为未验证——本包定位 5.1 盒子专用；6.0+ 设备建议用官方原包。
5. 上游更新（`tools/update_apks.py` 自动同步 usb-pack）后**整套管线需重跑**。
6. 冷路径未修（如触发将按信标定位）：`h1`/`vc/b` 文本测量（StaticLayout.Builder/getBreakStrategy，API 23）、gms consent `zzp` 的 getRootWindowInsets、`IconCompat` 系列（API 23 通知图标路径，TV 不走）。

## 9. 上机验证清单（最终版）

1. 设置 → 账号与安全 → 安装未知来源 → 允许；**先卸载旧版独播库**（签名不同）。
2. U 盘（FAT32）拷入 `usb-pack/01_独播库TV_v7.5.apk`（认准文件时间）→ 高清播放器安装。
3. 打开：应过 Splash（黑屏 loading）→ 进入主界面首页，海报图加载（coil 链路）。
4. 播放任意视频 ≥5 分钟（gS 签名 + 播放链路）；搜索、切分类、收藏连续操作 10 分钟。
5. 异常时记录现象（黑屏/弹窗/秒退/海报不加载/视频打不开）并同步到本文档 §5 追加轮次。
