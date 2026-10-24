# 最新更多下载 (com.weisen.tvbox v1.0.9) 超时修复补丁说明

`Updated最新更多下载_v1.0.9.apk` = 官方 v1.0.9 + 下述 smali 补丁。2026-10-24 在 Sony BRAVIA UR3 (Android TV 10, WebView 148) 实机验证：**下载地址 1（永硕实时目录页）与地址 2（蓝奏云）均正常打开**（原版/老 Patch 在该电视上无限 30 秒超时白屏）。

## 排查结论：为什么"Mac 和老小米盒子能开、Sony WebView 打不开"

在 Sony 上实测（同一局域网、同一 DNS `192.168.87.2`）：

| 探测 | Sony 结果 | 说明 |
| :-- | :-- | :-- |
| `dig A / TYPE65`（路由 DNS） | 0.2~0.3s 正常 | DNS 记录与 Mac 完全一致（61.147.124.5），HTTPS 记录为空 |
| `ping 61.147.124.5` | 227ms 正常 | ICMP 路径通 |
| `nc -w 6 61.147.124.5 443` | rc=0 | **TCP 443 能握手** |
| IPv6 / Private DNS | 无 / off | 排除 v6 与 DoT 因素 |
| `ping`/`nc` 用的系统解析 | 正常 | getaddrinfo（netd 路径）没问题 |
| **WebView（Chromium 自带网络栈）** | **每次 30 秒 `ERR_TIMED_OUT(-8)`** | 唯一失败的网络栈 |

Chromium 启动日志持续输出 `net/dns/dns_config_service_android.cc:69 Failed to read DnsConfig`——WebView 148 在这台 Android 10 电视上读不到 DNS 配置，其自带解析器全部挂起；同时该站证书链在 TV 的 Java CA 校验也缺中间证书（原作者在 DownloadUtil 里早已为此写了 trust-all）。Mac 浏览器与小米盒子 3（老 WebView 走系统解析器）都不经过这条坏路径，所以正常。

**结论：问题与 User-Agent 无关**（App 本来就发送 Windows Chrome 桌面 UA，超时发生在任何 HTTP 请求发出之前）；"模拟 Mac 浏览器" 的正确等价物 = 让 WebView 不用 Chromium 网络栈，改走电视上已被证实正常的 Java（`HttpURLConnection`）网络栈。

## 最终方案：WebView 只负责渲染，网络全部走 Java

新增 `WebViewActivity$2.shouldInterceptRequest`（细壳 `shouldInterceptRequest` → `doIntercept`，任何异常被壳捕获，失败自动回退 Chromium 原生路径，绝不让 App 崩溃）：

1. 拦截 WebView 内**所有** http(s) GET 请求（主页面、跳转、CSS/JS/图片、XHR）；
2. 用 `HttpURLConnection` 发起请求（Java 走 getaddrinfo 系统解析 = 正常路径），10s 连接 / 30s 读取超时，附带桌面 UA 与 WebView CookieManager 的 Cookie；
3. HTTPS 一律 trust-all（复用 App 原有策略：`TrustAllX509` + `TrustAllHosts`，与 `DownloadUtil.initUnsafeSSL` 一致；该站证书链在 TV Java 侧校验不过）；
4. 响应流（含 Content-Encoding 透传、charset 解析）包成 `WebResourceResponse` 返回给 WebView 渲染；
5. 主页面请求失败时调 `onMainLoadError()` → 走已有的"看门狗 + 自动重试 2 次 + 失败弹窗"流程，子资源失败静默返回 502 空响应（页面仍可渲染）；
6. 非 GET/非 http(s) 请求返回 null 走原生（`file:///android_asset/` 不受影响）。

配套保留的上一轮补丁（仍然有效）：

- **MainActivity$2**：下载地址 1 = 实时页面 `https://xiaomihezi.ysupan.com/`（不再是老的"本地静态页优先 + 后台同步"方案）；
- 20 秒加载看门狗（`LoadWatchdog`）+ 失败自动重试 2 次（`RetryRunnable`，Toast 提示）+ 重试耗尽弹出中文错误对话框（**本地静态目录兜底已按需求移除**）；
- `setAllowUniversalAccessFromFileURLs(true)`（`ApkInstallHelper` 内部仍引用 assets/1.html，保留该资产）。

smali 实现的三个坑（都已踩过并修复）：

1. apktool 反编译里参数寄存器会被复用（如 `onPageStarted` 的 `p2` 变日志 TAG），引用前必须先保存；
2. `WebResourceRequest` 是**接口**，必须用 `invoke-interface`（用 `invoke-virtual` 会 `IncompatibleClassChangeError`）；
3. 6 参构造器等 >5 寄存器的 invoke 必须 `/range` 且寄存器连续；后台线程禁止调 `WebView.getUrl()`。

## 复现命令

```bash
cd /tmp
apktool d -f -o tvbox_src "apks/common/最新更多下载_v1.0.9.apk"
# 覆盖本目录 8 个 smali 文件到 smali/com/weisen/tvbox/（DlRunnable/TrustAllX509/TrustAllHosts 为新增类）
apktool b tvbox_src -o unsigned.apk
BT=/opt/homebrew/share/android-commandlinetools/build-tools/34.0.0
$BT/zipalign -f -p 4 unsigned.apk aligned.apk
JAVA_HOME=/opt/homebrew/opt/openjdk@17 $BT/apksigner sign \
  --ks ~/.android/debug.keystore --ks-pass pass:android --key-pass pass:android \
  --v1-signing-enabled true --v2-signing-enabled true --v3-signing-enabled true --v4-signing-enabled true \
  --out "apks/common/Updated最新更多下载_v1.0.9.apk" aligned.apk
```

签名：`~/.android/debug.keystore`（SHA-256 `ab5e76e7...cbc7ae`）。与官方原版签名不同，覆盖安装需先卸载（`install-common-apks.sh` 会自动处理）。`.idsig` 为 v4 签名副产物。

## 验证记录（Sony BRAVIA UR3, 2026-10-24）

- 地址 1：`https://xiaomihezi.ysupan.com/` 实时目录页 **2.4 秒渲染完成**（原版 30s 超时白屏），页面标题「遇到问题联系掌柜…」、公开/在线/上传文件等真实内容可见，CSS/JS/图片子资源全部经 Java 栈加载；
- 地址 2：`https://wwbtz.lanzoup.com/b0139mr9gj` 「备用下载」页面 **1.4 秒渲染完成**；
- 拦截失败路径（Java 也超时/异常时）：自动重试 2 次（有 Toast）→ 中文错误对话框，无崩溃；
- 黑洞 URL 场景、下载触发（撤销看门狗）等回归项与上一轮一致。

## 其他说明

- Android WebView 本身没有任何可调超时参数；`--disable-features=AsyncDns`、`EncryptedClientHello` 等 WebView 命令行 flags 在本机实测无效，故最终采用拦截方案；
- Sony 的 `com.sony.dtv.airplayapp` 在本机反复崩溃（`Unable to bind to com.vewd.core.service`）——这是 debloat 停用 Vewd 浏览器服务的副作用，与本补丁无关；如需 AirPlay 可 `pm enable com.vewd.core.service`。


## 2026-10-24 追加:下载全流程打通(目录页 + 文件下载 + 安装)

深挖后发现光能打开目录页还不够,又补了两块:

### 1. 目录页动态内容(目录列表/剩余空间/留言板)加载

- **根因 A — 自定义状态码被改写**:永硕接口用 **HTTP 207/208/209 作为成功协议码**(207=JSON+数据、208=业务错误、209=执行脚本),老补丁把所有响应改写成隐式 200,页面 JS 永远等不到 207 → "正在读取目录列表..." 永久卡住。修复:拦截器透传真实状态码(6 参 WebResourceResponse)。
- **根因 B — 缺 Referer**:永硕接口校验 Referer,缺失直接返回 208「读取出错」。修复:`onPageStarted`(主线程)把当前页面 URL 存入 `lastPageUrl` 字段,拦截器在**请求 host 与页面 host 相同**时带上 Referer(跨域请求不带,避免泄漏)。
- 实测:目录列表 6 个文件夹、剩余空间、在线人数、留言板全部渲染,与 Mac 浏览器一致。

### 2. 文件下载 + 安装(本次新增 DlRunnable)

- **根因 — WebView 已知限制**:经 `shouldInterceptRequest` 返回的响应**永远不会触发 DownloadListener**,且拦截器会丢弃 `Content-Disposition` 头,导致点击 APK 链接后字节流被当网页渲染(乱码),下载永远不触发。
- **修复**:拦截器内自行识别下载响应(`Content-Disposition: attachment` / `.apk` URL / `application/download|octet-stream|package-archive|zip|x-rar` MIME),命中后经**新增类 `DlRunnable`** 把参数投递到主线程,调用 App 原有 `startDownload`(access$200)→ 进度对话框 → `DownloadUtil` 下载(trust-all Java 栈)→ 完成后弹出「下载完成,是否立即安装?」。
- **必须在 UI 线程**创建 DownloadProgressDialog——直接在 Chromium IO 线程调用会静默失败,这是本次反复试错的最后一个坑。
- 主线程投递返回一个空的 200 响应,避免 WebView 渲染二进制乱码。

### 3. 实机全流程验证(Sony BRAVIA UR3, 2026-10-24)

1. 地址 1 → 实时目录页渲染(含 6 个目录);
2. 展开「电视类app」→ 6 个 APK 带大小显示;
3. 激活「千寻.apk」→ 拦截器 `download-detected` → 进度对话框 → **7802273 字节下载完成**;
4. 「下载完成,是否立即安装?」→ 系统安装器识别「千寻」→ INSTALL → **App installed**,`com.tv.qx` versionName=1.1.5 ✓。

### 4. 注意事项

- **安装未知应用权限**:新电视首次安装需一次性授权(覆盖安装/同签名升级会保留):
  ```bash
  adb shell appops set com.weisen.tvbox REQUEST_INSTALL_PACKAGES allow
  ```
- 页面上的 POST 类操作(增加目录/上传/留言提交/管理区登录)仍走 Chromium 原生栈(WebView 的 shouldInterceptRequest 拿不到 POST body),在问题电视上会挂起——访客浏览与下载全部为 GET,不受影响。
- Sony 的 `com.sony.dtv.airplayapp` 因 debloat 停用 `com.vewd.core.service` 而崩溃刷屏(与 App 无关),如需 AirPlay `pm enable com.vewd.core.service`,或临时 `pm disable-user com.sony.dtv.airplayapp` 停止刷屏。

