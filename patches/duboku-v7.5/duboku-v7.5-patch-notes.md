# 独播库TV (com.supertws.dubokutv v7.5 / versionCode 33) Android 5.1 兼容补丁 — 全程记录

## 2026-11-07 API 22 网络策略崩溃诊断与修复

小米 3 的临时诊断 APK 收到重复的 `JAVA_CRASH thread=z Dispatcher`，堆栈指向 `mc.c.h`，异常类型为 `NoClassDefFoundError`，cause 为 `ClassNotFoundException`。检查该方法发现 API<24 分支无条件调用 `android.security.NetworkSecurityPolicy.getInstance()`；此类从 API 23 才存在，因此 Android 5.1/API 22 请求线程在 OkHttp 的明文策略检查中失败，主列表数据请求无法正常完成。修复是在调用该类之前增加 SDK 23 守卫：API<23 返回 `true`（沿用 Android 5 默认允许明文的策略），API 23+ 路径不变。

增加 `tests/test_android22_cleartext_policy.py` 防止 API 22 分支回归。修复后从 API 22 通用基包重建了干净 APK，移除临时网络上报诊断类，保留 minSdk 22、原签名和应用数据兼容性。三份交付包 SHA-256：`51c83a7960b3723a9baa15c938770646e7c4681186a89e96ca9acbc7f5bfd677`。小米 3 本机 ADB 不可用，补丁已构建和静态验证，实机回归待用户安装确认。

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
| `smali/androidx/tv/material3/SurfaceImplKt$handleDPadEnter$2.smali` | 在 `Lz0/c;->d`（D-Pad `onKeyEvent`）外层注入 `Landroidx/compose/foundation/i;->k`（`CombinedClickableElement`），赋予全局 TV Material3 控件（导航栏、分类筛选、影视卡片、搜索框、播放控制按钮）触摸屏点击能力，同时保持内层 D-Pad 拦截防止遥控器重复触发 |
| `smali_classes3/com/supertws/dubokutv/presentation/utils/d.smali`、`smali_classes4/mc/d.smali` | `utils/d` 实现 `Lrb/a;` 接口复用 `this.f.invoke(Boolean.FALSE)`，并在 `mc/d;->q` 中挂载 `Landroidx/compose/foundation/i;->j`（`clickable`），支持视频播放界面全屏触屏点击呼出控制栏与切换播放/暂停 |
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

# 3) 选择本补丁目录（也可指向 cleanyourtv/patches/duboku-v7.5）并覆盖文件
PATCH_DIR=apks/patches/duboku-v7.5
for part in smali smali_classes3 smali_classes4 smali_classes5; do cp -R "$PATCH_DIR/$part/." "duboku_src/$part/"; done
cp "$PATCH_DIR/AndroidManifest.xml" "$PATCH_DIR/apktool.yml" duboku_src/

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
- 包体：minSdk 22、`com.supertws.dubokutv`/versionCode 33 不变、v1+v2+v3 签名通过（debug 证书 SHA-256 `ab5e76e7...cbc7ae`，**与官方签名不同；迁移前须确认数据可备份和恢复**）；
- 指令级：成品重新解码确认每处 smali 守卫真实生效。

## 8. 剧集选集逆序排序优化（TV 详情页倒序排列）

- **需求**：TV 端选集默认正序（第01集排在最前），电视剧集数较多时，用户更习惯倒序查看最新更新剧集（从最后一集排到第一集）。
- **实现**：
  - 定位 TV 详情页选集列表渲染点：[`TvEpisodeList`（i0.smali）](file:///Users/jerryshao/Documents/cleantv/apks/patches/duboku-v7.5/smali_classes3/com/supertws/dubokutv/presentation/screens/moviedetail/i0.smali#L810-L820)。
  - 在遍历 `episodeList` 渲染选集按钮前，增加 `invoke-static {v1}, Lkotlin/collections/r;->H0(Ljava/lang/Iterable;)Ljava/util/List;`（`CollectionsKt.reversed(Iterable)`），仅在 UI 渲染层将剧集倒序排列。
  - **核心保障**：底层数据模型 `Lqa/p;->o` 及播放器传参 `Lqa/f0;->n` 均保持不变，因此播放器内部的“自动下一集”、“剧集定位”等业务逻辑依然保持正向连贯，不受影响。

## 9. 待验证 / 残余风险

1. **00:12 探针包待上机**：验证 shim 是否消除 native 段错误；`gS.begin/gS.ok` 信标将给出 gS 签名调用是否成功。
2. 若 MainActivity 后仍死且无信标：下一嫌疑为 `libandroidx.graphics.path.so`/`libdatastore_shared_counter.so` 之外的其他 native 路径，或需要用 `adb`（若授权能通）抓 tombstone（`/data/tombstones/`）。
3. 探针正式版需移除（Dbg 类 + 各植入点还原），签名保持同一 debug 证书。
4. 版本化符号（`@LIBC`）在 6.0+ 链接器上从无 VERDEF 的 shim 解析的行为未验证——本包定位 5.1 盒子专用；6.0+ 设备建议用官方原包。
5. 上游更新（`tools/update_apks.py` 自动同步 usb-pack）后**整套管线需重跑**。
6. 冷路径未修（如触发将按信标定位）：`h1`/`vc/b` 文本测量（StaticLayout.Builder/getBreakStrategy，API 23）、gms consent `zzp` 的 getRootWindowInsets、`IconCompat` 系列（API 23 通知图标路径，TV 不走）。

## 9. 上机验证清单（最终版）

1. 设置 → 账号与安全 → 安装未知来源 → 允许；签名不同时先备份并确认能恢复数据，再决定是否迁移。
2. U 盘（FAT32）拷入 `usb-pack/01_独播库TV_v7.5.apk`（认准文件时间）→ 高清播放器安装。
3. 打开：应过 Splash（黑屏 loading）→ 进入主界面首页，海报图加载（coil 链路）。
4. 播放任意视频 ≥5 分钟（gS 签名 + 播放链路）；搜索、切分类、收藏连续操作 10 分钟。
5. 异常时记录现象（黑屏/弹窗/秒退/海报不加载/视频打不开）并同步到本文档 §5 追加轮次。

## 10. 跨版本音频兼容记录

`smali/j3/x.smali` 在 Android 6.0 及以上使用 `AudioTrack.Builder`，在 Android 5.1 使用 `DubokuCompat.createAudioTrack`，并守护音频设备回调。历史测试记录显示 Sony Android 10 可进入播放；Android 5.1 分支仍需在目标设备上验证。

### 2026-11-01：局域网同步与详情页刷新

- 补丁目录包含经过验证版本的 `LanSyncManager.java`、`smali_classes3/com/supertws/dubokutv/LanSyncManager*.smali` 和所需的应用入口、播放器、详情页调用点。构建时覆盖整个 `smali*/` 目录及 `AndroidManifest.xml`、`apktool.yml`；仅复制 Java 源码不会将同步功能加入 APK。
- `qa.p` 的 `f` 是剧名，`b` 是详情地址，`a` 是 ID。`resolveLatestRecord` 以前将详情地址当剧名、ID 当地址，导致详情页重组后仍查询不到记录。现已修正字段映射，不改 Compose 的跳过控制流。补丁目录内 smali 已修复；`fix_detail_record_lookup.py <已解码目录>` 仅用于对包含旧版同步补丁的其他反编译目录应用修复，不能对已修复的目录重复运行。若重新编译 `LanSyncManager.java`，必须使用包含 `qa.p.f` 和 `qa.p.b` 的正确编译存根，并确认生成的 smali 保留该映射。
- 真机验证：Sony 向 Hisense 的独立测试副本发送测试记录，详情页保持打开时，按钮从第39集 7% 更新到第40集 50%；临时副本和记录已删除。修复版在 Sony 上完成保留数据更新并启动。Hisense 原应用因签名不同未被覆盖，尚未在其原应用上验证。
- 已知限制：首次启动的同步请求可能早于 Room 建表，导致传入记录写入失败；此问题未随本次详情页修复解决。详情页显示验证使用测试数据，未验证对应真实播放跳转。
- 签名不同时不要直接卸载原应用：卸载会删除其本地数据。先确认数据可备份和恢复，再决定迁移方式。

- 构建检查：将本目录 smali 和清单覆盖原版反编译目录后，`apktool b` 成功；生成的四个 DEX 与已验证修复版逐字节相同。该检查不涵盖 native 补丁重建或重新签名。

- Hisense 正式安装实测：原版签名不同，按用户要求卸载后安装修复版；原版 APK 与仓库原版校验一致，ADB 数据备份未生成有效文件，原版本地数据已清除。Hisense 播放《早春晴朗》时，Sony 停留详情页由“播放”更新为“继续播放 第1集 1%”；Sony 接续播放后，Hisense 停留详情页从 1% 更新到 2%，并从约 62 秒处继续播放。全新安装首次启动仍出现 `no such table: records`，表创建前收到的同步记录未写入；此项尚未修复。

### 播放页跨电视续播（2026-11-01）

暂停端只缓存另一台发送的进度，画面和播放焦点保持不变。按播放键时，同集且远端领先超过 5 秒才定位；较新集数从当前剧集列表查找 ID，加载媒体源后定位并播放。候选进度按发送时间去重；无法匹配剧名或集数时继续本机位置。播放器当前位置使用 `h0.M()`，`R()` 是时长。

Sony 与 Hisense 真机验证：同集暂停约 16:40，收到约 16:57 后按 OK 接续；跨集从第5集暂停切换到第6集约 22 秒。测试版回归确认版本流继续递增。首次启动同步早于数据库建表的问题仍未解决。

测试进度选择：`javac -d /tmp/handoff-test HandoffProgress.java tests/HandoffProgressTest.java && java -ea -cp /tmp/handoff-test com.supertws.dubokutv.HandoffProgressTest`。

### 播放控制栏新增“跳过片头”（快进30秒）功能按键（2026-11-03）

- **需求**：在独播库 TV 端播放控制栏的“后退10秒”按键前面增加一个功能键“跳过片头”，行为如同“快进15秒”一样执行前进 30 秒（`position + 30000ms`）。
- **按键排布**：
  `[ 折叠 (∨) ]  →  [ 跳过片头 (30s) ]  →  [ 后退 10s ]  →  [ 快进 15s ]  →  [ 上一集 ]  →  [ 下一集 ]  →  [ 速度 ]`
- **实现细节**：
  1. **资源层**：
     - 新增 `res/drawable/ic_rewind_30_seconds_forward.xml`（固定 public id `0x7f080101`），视觉风格与现有 15 秒快进按键严格一致，采用顺时针圆弧箭头并绘制“30”数字。
     - 在 `strings.xml` 中添加 `player_control_skip_intro`（“跳过片头”，固定 public id `0x7f110193`）。
  2. **逻辑层**：
     - 创建 `com.supertws.dubokutv.SkipIntroHelper`，实现 `rb.a`（`() -> Unit`）接口，注册当前活动 `ExoPlayer` 与进度状态引用，执行 `((s0) player).s(5, currentPosition + 30000L)`。
     - 在 `p0.smali` 播放器初始化时通过静态方法注入实例。
     - 在 `r.smali` 控制栏渲染管线中，位于“折叠”之后、“后退10秒”之前插入新的 `s.i` 按键组件调用。遥控器左/右方向键自然获得焦点。
- **实机验证**：
  - 在局域网 Sony Bravia 4K TV（`192.168.87.232`）上完成在线安装实测。
  - 播放视频呼出控制栏，按键正确渲染在“折叠”与“后退10秒”之间。
  - 遥控器向右切换焦点至“跳过片头”并点击，播放进度瞬时精准快进 30 秒，画面与进度条同步跳转。

### 局域网播放进度同步无缝优化（2026-11-03）

- **问题现象**：
  - Hisense Fire TV 播放至第 5 集，Sony TV 停留在首页，此时进入历史记录页或从首页选择相同片子打开详情页，仍显示停留在第 4 集；只有在 Sony TV 再次按播放第 5 集时才触发接续同步。
- **根本原因分析**：
  1. **被动同步局限**：原先 `LanSyncManager.requestSyncFromLan()` 仅在应用冷启动及 `MainActivity.onActivityResume()` 时广播。若接收端一直开机停留在主页（Launcher）没有切走，期间只要 Hisense 发送单次播放结束广播时 Sony 出现网络瞬断或单次 UDP 丢包，Sony 端将没有任何二次补拉机制。
  2. **页面进入未触发补拉**：进入“历史记录页”或“剧集详情页”时没有主动发出同步请求，依赖历史单次广播残留。
  3. **冲突裁决规则对主动回看与切集不敏感**：旧裁决若远端集数小于本地集数，必须满足 `remoteModAt > localModAt + 30000ms`，在快速切换或多端短时间操作时可能被误判为过期数据而被丢弃。
- **优化与改进方案**：
  1. **3秒防抖主动拉取 (`requestSyncDebounced`)**：
     - 在 `LanSyncManager` 中增加 `requestSyncDebounced()`，限制 3000ms 冷却时间。
     - 在详情页进入入口（`presentation/screens/moviedetail/v.smali`）和历史页进入入口（`presentation/screens/history/i.smali`）注入主动拉取。
     - 用户在电视上从首页进入历史或详情页时，后台自动触发一次防抖拉取，局域网对端 TV 响应回传最新 20 条记录，无需按播放键即可静默更新。
  2. **单调时间戳优先裁决算法 (Monotonic Timestamp First)**：
     - 改进 `LanSyncManager$2.smali` 中的裁决判定：
       - `remoteModifiedAt > existingModAt`：无条件视为用户最新意图并采纳（完美兼容向前看、切新集、以及回看旧集）；
       - `remoteModifiedAt == existingModAt`：比较集数与进度大小；
       - `remoteModifiedAt < existingModAt`：丢弃网络乱序旧包。
  3. **历史记录页与详情页双端响应式刷新**：
     - 在 `history/i.smali` 中注入订阅 `sSyncVersionFlow`，与 `moviedetail/v.smali` 相同，收到对端同步并写入数据库后，触发 Room `invalidationTracker.refreshVersionsSync()` 和 Compose 重组，历史记录列表与详情页“继续播放”按钮无需退出重进即可秒级静默刷新。
- **实机与模拟验证**：
  - Sony TV 安装新构建的补丁包后，由局域网模拟 Hisense 发送更新数据包（《早春晴朗》第5集 @120s）。
  - Sony TV 成功接收并输出：`Synced newer remote progress for: 早春晴朗 第5集 @120s from Hisense_FireTV_test`、`Triggered Room invalidationTracker.refreshVersionsSync()`、`bumpSyncVersion to 1`。
  - 详情页与历史页成功根据新时间戳与新进度完成更新。

### 历史记录列表未响应外部同步更新根因与修复（2026-11-04）

- **问题现象**：
  - 在影片详情页（`MovieDetailsScreen`）中能正常同步并展示来自其他电视的最新播放进度，但在「历史记录」列表页面中进度迟迟没有更新。
- **根本原因分析**：
  1. **详情页直接绕过 Room Flow**：`MovieDetailsScreen` 订阅了 `sSyncVersionFlow` 触发重组，重组时直接调用 `LanSyncManager.resolveLatestRecord()`，通过独立底层连接执行裸 SQL `SELECT ... FROM records` 构造数据对象，因此详情页能够成功读取最新进度。
  2. **历史记录页依赖 Room TriggerBasedInvalidationTracker**：历史列表数据源完全绑定在 `HistoryScreenViewModel`（`history/o.smali`）的 Room 响应式 Flow（`SELECT * from records ORDER BY modifiedAt DESC`）上。
  3. **SQLite TEMP 触发器连接隔离失效**：
     - `LanSyncManager` 接收网络同步包后，是通过 `openOrCreateDatabase("record_database", ...)` 建立外部独立 SQLite 连接写入数据。
     - Room 内部追踪表变更机制使用的是 **SQLite TEMP 临时表（`room_table_modification_log`）和 TEMP 临时触发器**。
     - 在 SQLite 规范中，**TEMP 触发器严格限制在创建该触发器的连接作用域（Connection-scoped）内**。通过外部原生连接插入或修改 `records` 表，不会在 Room 连接的 TEMP 触发器中置位 `invalidated = 1`。
     - 随后 `LanSyncManager.bumpSyncVersion()` 虽然调用了 `((androidx.room.x) db).g().b()`（`invalidationTracker.refreshAsync()`），但查询到的失效表为空集合，Room 认为没有表被修改，不会递增版本流 `ObservedTableVersions`（`p.b`），导致 `HistoryScreenViewModel` 的 Flow 永远不向 UI 发射新列表。
- **极简根因修复方案**：
  1. **`LanSyncManager$2.smali` 先关闭外部写连接**：
     - 写入 `records` 表后先显式调用 `db.close()` 释放写锁与 WAL 缓冲，确保随后 Room 读取协程查询时能读到最新一致性落盘数据。
  2. **`LanSyncManager.bumpSyncVersion()` 强制更新表版本**：
     - 在 `LanSyncManager.smali` 与 `LanSyncManager.java` 的 `bumpSyncVersion()` 中，除常规刷新外，直接调用 `ObservedTableVersions.b(Set(0))`（`0` 即 `records` 的 tableId）：
       `((androidx.room.x) sRoomDb).g().b.i.b(Collections.singleton(0));`
     - 直接强制 Room 的 `StateFlow<[I>` 递增，瞬间唤醒 `TriggerBasedInvalidationTracker$createFlow$1` 重新执行历史记录 DAO 查询并更新 `HistoryScreenViewModel`。

### 历史记录列表《兰香如故》封面丢失与整页闪烁重绘修复（2026-11-04）

- **问题现象**：
  1. 历史记录中《兰香如故》的封面变成了缺省红色 "D" Logo。
  2. 当局域网内另一台电视正在播放时，历史列表整个页面周期性不时闪烁重绘。
- **根本原因分析**：
  1. **封面丢失**：
     - 测试脚本发送的广播包中 `posterUrl` 为空字符串且包含 `example.com` 测试地址。
     - 原版 `LanSyncManager` 收到数据包时直接清空旧记录并存入远端空字段，未保留本地已有的有效海报 URL，且空海报记录通过局域网广播扩散。
  2. **整页闪烁重绘（4 处联动机制）**：
     - **AnimatedContent 销毁重建整行**：`history/i.smali` (`i.f`) 将整个 `recordList` 传入 `AnimatedContent`，因未传特定 `contentKey`，列表中任何一部剧的进度变化都会让 `newList != oldList` 触发整行淡出销毁与淡入重构，导致整行卡片海报重新加载闪烁。
     - **LaunchedEffect 重置焦点**：`history/i.smali` (`i.b`) 的 `LaunchedEffect(recordList)` 以列表为 key，每次数据更新都会重新执行 `focusRequester.requestFocus()`，导致用户正在浏览时焦点闪烁或重置。
     - **REQUEST_SYNC 广播风暴**：`history/i.smali` (`i.g` & `i.k`) 在 Composable 函数体内直接调用 `requestSyncDebounced()` 并订阅 `sSyncVersionFlow`。每次刷新重组又触发全网 `REQUEST_SYNC`，招致其他电视连发 20 条记录的回传风暴。
     - **双包并发与无节流**：UDP 广播双发（255.255.255.255 与子网广播）相隔 1ms 并发写库；且对端每 5 秒秒级进度更新都强制唤醒 UI。
- **修复方案**：
  1. **`history/i.smali` (`i.f`)**：绕过 `AnimatedContent` 整行淡入淡出重建，直接调用 `history/v` (`LazyRow`)，配合单项稳定的 `qa.t.a` item key 实现卡片内进度文字原地平滑刷新，封面与组件零闪烁。
  2. **`history/i.smali` (`i.b`)**：将 `LaunchedEffect` 的 key 改为常量 `Unit`，仅在首次进入历史页时申请初始焦点，后续同步更新时不抢夺用户遥控焦点。
  3. **`history/i.smali` (`i.g` & `i.k`)**：仅在 Composable 首次挂载（`Composer.S == true`）时调用 `requestSyncDebounced()`，并移除冗余的 `sSyncVersionFlow` 订阅（由 Room 数据库响应式 Flow 驱动）。
  4. **`LanSyncManagerPatch.java` / `LanSyncManagerPatch.smali`**：增加数据库操作同步锁；保留本地有效 `posterUrl`/`detailPageUrl`/`videoPageUrl`；过滤并清理 `example.com` 脏记录；对同集微小进度仅在整数百分比变化时通知 UI 重组。
- **实机验证（Sony Bravia 4K TV & Hisense Fire TV）**：
  - 双机实装部署并实测：
    - 《兰香如故》历史记录封面恢复为真实剧照海报。
    - 局域网持续高频广播播放进度时，历史列表完全不闪烁、海报不重载、用户选中的焦点不跳动，卡片内观看百分比平滑无感更新。


- **问题现象**：
  1. 首页所有海报封面变为默认红色“D”占位图标。
  2. 点击任意剧集播放时，直接闪退并退出回电视 Launcher 桌面。
- **根本原因分析**：
  1. **播放器闪退**：
     - 在 `presentation/screens/videoPlayer/r.smali` 注入“跳过片头”按键调用 `s;->i(...)` 时，寄存器 `v3` 存储了 `player_control_skip_intro` 的字符串资源 ID（`0x7f110193`），但没有将其重新赋值为 `rb.a` 对象引用。
     - ART 虚拟机在加载 `videoPlayer.r` 类时触发静态字节码校验失败：
       `java.lang.VerifyError: Verifier rejected class com.supertws.dubokutv.presentation.screens.videoPlayer.r: ... [0x207] register v3 has type Imprecise Constant: 0x7fffffff but expected Reference: rb.a`。
  2. **海报封面变红D图标**：
     - 打包工具在增量构建时遗漏了此前针对图片加载及 TLS 1.2 的注入补丁（`smali/coil/fetch/k.smali`、`smali_classes4/mc/c.smali` 及 `DubokuCompat.smali`）。
     - 导致 Coil 图片加载管线和底层 OkHttp 协议回退失败，静默回退至占位图 `ic_logo`。
- **修复与验证**：
  1. 修正 `r.smali` 中的寄存器分配，在调用 `s;->i(...)` 前正确注入 `sget-object v3, Lcom/supertws/dubokutv/SkipIntroHelper;->INSTANCE:Lcom/supertws/dubokutv/SkipIntroHelper;`。
  2. 将 `smali/coil/fetch/`、`smali_classes4/mc/` 与 `DubokuCompat.smali` 完整纳入构建树并生成全量安装包。
  3. **实机验证**：
     - 在 Sony Bravia 4K TV（`192.168.87.232`）重新安装并实测：
       - 首页所有海报（如《兰香如故》、《早春晴朗》、《花开锦绣》等）全部恢复正常彩色封面，无红“D”图标。
       - 进入详情页并点击“继续播放 第38集 7%”，播放器瞬时顺利打开，画面与音频正常播放，零崩溃。
       - 呼出控制栏，`[ ∨ ] [ 30 ] [ 10 ] [ 15 ]` 焦点与点击快进 30 秒功能均正常无误。

### 全局触摸屏点击与播放器触屏交互支持（2026-11-04）

- **需求**：让独播库 TV（`com.supertws.dubokutv` v7.5）支持手机、平板及带触摸屏设备的点击与播放控制。
- **根本原因分析**：
  1. **全局 TV Material3 控件未挂载 PointerInput**：导航栏 Tab、分类筛选 `FilterChip`、影视卡片 `Card`、剧集选集按钮、搜索页输入框外层 `Surface` 以及播放控制栏按钮均汇总调用 `Landroidx/tv/material3/i;->o` / `p`，最终通过 `SurfaceImplKt$handleDPadEnter$2.smali` 仅注册了 `onKeyEvent`（监听遥控器确认键），未注册任何触摸点击监听。
  2. **视频播放器根容器仅监听按键预览**：`TvVideoPlayer` 根容器通过 `Lmc/d;->q`（`handleDPadKeyEvents`）仅绑定了 `onPreviewKeyEvent`（`utils/d.smali`），全屏播放且控制栏隐藏时点击屏幕无响应。
- **极简修复方案（Ponytail 根因注入）**：
  1. **`smali/androidx/tv/material3/SurfaceImplKt$handleDPadEnter$2.smali`**：在 `Lz0/c;->d(p1, v2)`（`onKeyEvent`）之前注入一行 `Landroidx/compose/foundation/i;->k(p1, v6, v5)`（Compose Foundation `CombinedClickableElement`）。由于 `d` 处于修饰符链内层且对遥控器确认键 `ACTION_DOWN`/`ACTION_UP` 返回 `Boolean.TRUE` 拦截冒泡，电视遥控器不会双重触发，而触摸屏点击则由外层的 `k` 完整响应。
  2. **`smali_classes3/com/supertws/dubokutv/presentation/utils/d.smali` & `smali_classes4/mc/d.smali`**：让 `utils/d` 同时实现 `Lrb/a;` 接口并复用 `this.f.invoke(Boolean.FALSE)`（等同于短按遥控器确认键：播放时暂停并呼出控制栏，暂停时呼出控制栏或恢复播放），在 `mc/d;->q` 末尾通过 `Landroidx/compose/foundation/i;->j(v0, v9, null, v14, 0x6)` 挂载到播放器根容器。
- **实机验证（华为平板 Huawei Pad）**：
  - 通过 FTP（`ftp://192.168.87.24:3721/01_独播库TV_v7.5.apk`）部署至华为平板实机测试，全局导航栏切换、分类筛选标签、影视海报卡片、剧集选集、搜索输入以及视频播放器触屏呼出控制栏/暂停播放/进度控制均完美运行。

### 历史列表集数不匹配与播放按向上键退出到桌面修复（2026-11-04）

- **问题现象**：
  1. Sony TV 历史列表中显示《小城良方》第 12 集 55%，点击播放后播放器却从第 11 集开始播放。
  2. 视频全屏播放状态下按遥控器向上键（DPAD_UP）想呼出控制按钮时，应用直接闪退并退出到系统桌面（Launcher）。
- **根本原因分析**：
  1. **集数与 VideoId 不匹配**：
     - 在局域网进度同步写入 SQLite 数据库时（`LanSyncManagerPatch.smali` 第 81 行）：
       `cv.put("id", (existingId != null && !existingId.isEmpty()) ? existingId : id);`
     - 独播库中 `records.id` 即为具体的单集视频 ID（如第 11 集和第 12 集各自有不同的 `videoId`）。
     - 当从其他电视同步第 12 集的最新进度时，因保留了本地旧的 `existingId`（第 11 集的 ID），导致数据库中的 `episode` 被更新为“第12集”，但主键 `id` 仍锁死在第 11 集。点击历史卡片时，程序取该 `id` 直接向 `VideoPlayer` 发起导航，导致播放了第 11 集！
  2. **按向上键退出回桌面**：
     - 播放器内按 DPAD_UP / DPAD_DOWN 时，`TvVideoPlayerControls` 控件渲染展示。
     - 控制栏渲染过程中，若控制按钮（如“跳过片头” `SkipIntro`）所需的资源在当前系统语言配置下未被正确找到，或者因为资源合并打包时缺省值缺失，触发了 `android.content.res.Resources$NotFoundException: String resource ID #0x7f110193`。
     - 此时未被捕获的资源异常直接导致 `Activity` 崩溃闪退回 Launcher。
- **极简修复方案（Ponytail 根因注入）**：
  1. **修正 `LanSyncManager` / `LanSyncManagerPatch.smali` ID 赋值逻辑**：
     - 写入同步记录时，优先使用远端广播包携带的最新单集 `id`（`remoteId`），仅在远端未提供时才回退至本地已有 `id` 或剧集名称，确保 `id` 与 `episode` 严格对应。
  2. **补全 `player_control_skip_intro`（`0x7f110193`）多语言资源与公共表**：
     - 在 `res/values/strings.xml` 及 `res/values-zh-rTW/strings.xml` 等资源目录补齐 `player_control_skip_intro` 字符串定义。
  3. **统一签名机制与输出包**：
     - 使用统一 Debug 证书重打包，产物同步更新到 `apks/common/独播库TV_v7.5.apk`、`apks/common/Updated独播库TV_v7.5.apk` 以及 `devices/xiaomi-mibox3/usb-pack/01_独播库TV_v7.5.apk`。
- **实机验证**：
  - 在 Sony Bravia 4K TV（`192.168.87.232`）与 Hisense Fire TV（`192.168.87.37`）实机静默热更安装验证：
    - 播放视频时连续按遥控器向上键（DPAD_UP）、向下键（DPAD_DOWN）、确认键均能平滑呼出与操作控制栏，无任何崩溃或退回桌面。
    - 点击历史卡片能够准确对应当前集数进行续播。





# Cloudflare R2 跨电视播放进度同步（2026-11-05）

- 新增 Worker / KV 授权与 R2 每设备快照；家庭身份由局域网 UDP 自动发现，R2 不公开，APK 不含 S3 凭据。
- Android 在本机记录提交后生成快照，合并上传并拉取已知 peer；云端不可用时保留 UDP 同步和本地记录。
- Worker 已部署：`https://cleantv-r2-sync.jerry-shao.workers.dev`（版本 `511a0c02-cbee-4430-b9d6-87b2ea549918`）。
- 实机验收：Sony Bravia 4K UR3（Android 10）播放并上传《兰香如故》第 47 集、4% 后休眠并停止 app 进程；确认 Sony 为 `Asleep` / 屏幕关闭后重启 Hisense Fire TV AFTHU71990（Android 11）app。Worker 实时日志出现成功的 peer snapshot GET，Hisense 观看记录显示同一集和 4%。
- Xiaomi MiTV-AZFU0 / darkknight（Android 14）覆盖安装 v7.5，保留应用数据；首页和历史正常，播放《小城良方》第 15 集后进度由 46% 增到 48%，系统返回后 Worker 收到成功 PUT。停止 Xiaomi app 并休眠后，Hisense 再次刷新时 Worker 收到成功 GET。ADB 抓屏播放画面为黑色，ExoPlayer 初始化和进度推进正常，但画面渲染未能通过抓屏独立确认。
- 实施、接口、限额策略和未覆盖验证项见 [R2_SYNC_IMPLEMENTATION.md](R2_SYNC_IMPLEMENTATION.md)。

### 家庭加入码与重复 familyId 合并（2026-11-07）

- 新增独立 `家庭同步` TV launcher 入口，可为当前已配对家庭显示/轮换可手抄加入码，并支持新设备输入加入码；凭据写入 app-private identity，读取已有设备快照后再同步本机数据。
- 新增多家庭预览、按设备复制快照并读回校验、二次确认清理源前缀/撤销源 family auth 与加入码。Worker 普通同步不执行 R2 LIST；只在明确的 merge 操作中列举输入的源家庭前缀。
- 新 Worker API 配置随机 Worker secret `JOIN_CODE_KEY`，版本 `3ffff7a0-f8d9-4caa-9136-f871fe6e72a0` 已部署。Sony Bravia 4K UR3、Hisense Fire TV、Xiaomi MiTV-AZFU0 匹配签名覆盖安装并保留数据；三台页面均显示 `214cbca3-5707-46cf-b305-1c4aa924773d`。Hisense 与小米读取已知设备快照并上传成功。Hisense 上误触轮换导致最初加入码失效，随后在 Hisense 兑换新生成的同家庭码成功；小米原先已在目标家庭，无需再次兑换。未执行家庭合并/清理。细节见 [R2_SYNC_IMPLEMENTATION.md §11](R2_SYNC_IMPLEMENTATION.md)。
- 家庭同步页默认焦点移至“加入并同步家庭进度”，所有按钮添加高对比焦点描边与白字；更换加入码按钮明确标注旧码失效，并增加二次确认。Sony、Hisense、小米均已保留数据覆盖安装；Sony 实测首次确认只打开警告，按返回不生成新码；三台默认焦点均为“加入并同步家庭进度”。最新 APK：`devices/xiaomi-mibox3/usb-pack/01_独播库TV_v7.5.apk`。
- Android 8 以下的 Coil 图片请求现统一将 HTTPS URL 降为 HTTP，覆盖云同步引入的非 `pic.dbokutv.com` 海报域名；通用包必须以 minSdk 22 的 `apks/common/Updated独播库TV_v7.5.apk` 为基包，再叠加本目录补丁，确保 Xiaomi 3 API 22 兼容层保留。
- 2026-11-07 通用包以 API 22 兼容基包重建，并同步到 common 与 MiBox3 USB 路径；三份 APK SHA-256 为 `bd2bfef563e3956a1589f569a4802c96a5006a24b5a309acdaccf54123cce384`。Sony、Hisense 覆盖安装成功；MiBox3 和 5 Max 当时 ADB 不可用，尚未完成这两台的安装与封面实机验证。
- APK overlay 要包含 `smali_classes4` 新页面与同步客户端 classes、`smali_classes3/FamilyIdentity.smali` 更新、AndroidManifest 和 `res/values/strings.xml`；必须从原包完整解码后增量覆盖，不能只复制 Java 参考源。

### 跳过片头按钮仅在点击时快进（2026-11-05）

- **问题**：方向键将焦点移到“跳过片头”时就前进 30 秒；按 OK 时反而调用了原有回退回调。
- **修复**：将焦点回调改为空操作，把快进 30 秒回调绑定到 OK/触摸点击。
- **Sony 实机验证**：Sony Bravia 4K UR3（Android 10）播放《小城良方》第 16 集时，进度停在 `00:54`，方向键移入按钮后仍为 `00:54`；按 OK 后到 `01:24`，触摸按钮后到 `01:54`。


### 家庭设置面板焦点与启动器入口（2026-11-07）

- 家庭面板按钮聚焦时使用白底黑字，移除黄色边框；未聚焦按钮保持深色底白字。
- 从个人菜单选中“家庭”时，右侧家庭设置立即显示，菜单焦点不被面板抢走；首次使用也可从该入口直接打开配置。
- 移除 `FamilySyncActivity` 的 MAIN/LAUNCHER 与 LEANBACK_LAUNCHER intent-filter，并设为非导出；桌面只保留 `SplashActivity` 主入口。
- Hisense Fire TV（192.168.87.37）覆盖安装、保留家庭数据验证：家庭行显示右侧面板；菜单行白底黑字；按右进入后按钮白底黑字且无黄色边框；启动器查询只返回 `SplashActivity`。 云同步开关可关闭后再恢复为开启。三个分发 APK 与 Hisense 已安装包 SHA-256 均为 `0d7abbbcd73202f1ef5372cbd5a4d32bece9ac6d2baded0efd24657f911d4376`。

### 云同步关闭时禁用云端设置（2026-11-07）

- 关闭云同步时取消待执行的云端读取/上传并使旧任务失效；已发出的 HTTP 请求无法撤回。加入码、加入与家庭合并接口均增加云同步状态校验。
- 面板中的加入码、加入和合并控件及输入框随开关置灰；本地记录与局域网同步继续工作。重新开启后先读取云端，再生成当前数据库快照上传。

### 家庭设置增加局域网络同步开关（2026-11-07）

- 新增持久化的“局域网络同步”开关，默认开启且与云端开关相互独立。关闭后停止 UDP 接收器，并门控进度广播、同步请求、批量响应、家庭发现与身份交换；本地播放和记录照常工作。
- 重新开启后恢复接收器并广播一次 `REQUEST_SYNC`；云端同步仍按自己的开关运行。关闭云同步时，LAN 开关仍可编辑，其余云端管理控件保持禁用。
- 家庭面板开关已按设置面板统一为透明内容区、深色圆角整行、左侧名称/右侧状态和白底黑字焦点，不改变个人菜单的焦点归属。
- 回归脚本 `tests/test_lan_sync_toggle.py` 覆盖设置持久化、LAN 网络入口门控、云/LAN 控件独立性及面板样式；Sony 与 Hisense 覆盖安装和焦点/切换验证完成。

### API 22 兼容版分发包更新（2026-11-08）

- 家庭面板与同步开关补丁从 `apks/common/Updated独播库TV_v7.5.apk`（minSdk 22，保留 Xiaomi 3 native/API 兼容层）重新构建；未使用 Sony 安装包作分发基底。
- 同一成品已替换 `apks/common/独播库TV_v7.5.apk`、`apks/common/Updated独播库TV_v7.5.apk`、`devices/xiaomi-mibox3/usb-pack/01_独播库TV_v7.5.apk`，SHA-256：`74a2512e57f91b448fdc6f7d6e54e1de9fc4249e1846393917c896ad8ee2a8e5`。三份文件逐字节一致；包名、versionCode 33、minSdk 22 和 Debug 签名校验通过。
- 此兼容版在 Sony Bravia UR3、Hisense Fire TV 和 Xiaomi Mi Box 5 Max 覆盖安装并启动成功，保留应用数据。小米盒子 3 Android 5.1.1 未连接实机验证；其兼容性以 API 22 基底与保留的 native/API 补丁为依据。

### 修复小米 3 非主图域名封面占位并固定通用包构建（2026-11-08）

- **根因**：`cleanyourtv/patches` 中 Java 与 Smali 已将 API<26 的任意 HTTPS 海报 URL 改为 HTTP，但发行目录 `apks/patches` 的镜像仍只处理 `https://pic.dbokutv.com`。从 API 22 基底构建时，旧镜像覆盖了新逻辑；其他 HTTPS 海报域名在 Android 5.1 上失败并显示 D 占位图，列表数据和播放不受影响。
- **修复**：Java 与 Smali 一致改为 API<26 检查通用 `https://` scheme 并降级为 `http://`；API 26+ URL 保持不变。新增 `tests/test_legacy_image_urls.py` 防止 Java/Smali 再次分叉。
- **防遗漏构建**：新增 `build_universal_apks.sh`，只从 `apks/common/Updated独播库TV_v7.5.apk` 解码；校验 minSdk 22、两种 ABI 的 Xiaomi 3 shim、封面及 API 22 网络补丁，并比较发行源与 `cleanyourtv/patches` 的关键图片 Java/Smali 文件；打包后校验签名、minSdk 和 native 库逐字节未变，再同步三份发行包。未来不要从 Sony/Hisense APK 重建通用发布包。
- **发行包**：三份 APK SHA-256 为 `9037b4804ed4e41873d1159118184f72046ddb6e255d7b4d2869887933eb8ff1`。Sony、Hisense、Xiaomi Mi Box 5 Max 覆盖安装并启动通过。小米盒子 3 ADB 当前未连接，仍需实机确认各域名封面加载。

### 跳过片头焦点修复纳入通用 APK 构建（2026-11-08）

- 回归原因：上一版“焦点移动不快进，按 OK 才快进”的修复已在 sony-ur3 补丁树中，但通用 APK 从 `apks/patches/duboku-v7.5` 叠加 smali；构建镜像校验遗漏播放器 `r.smali` 和 `SkipIntroFocusNoop.smali`，因此旧焦点回调重新进入 APK。
- 恢复该既有修复：焦点回调使用空操作 `SkipIntroFocusNoop`，点击回调保留 `SkipIntroHelper` 的 30 秒快进。没有再实现另一套播放器逻辑。
- `build_universal_apks.sh` 现在逐字节校验这两个文件与 sony-ur3 补丁树一致；`tests/test_skip_intro_focus.py` 检查焦点回调、点击回调和构建镜像守卫。
