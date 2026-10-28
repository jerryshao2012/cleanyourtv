/* libdubokushim.so — C 版：符号实现 + native 崩溃信号捕获（诊断）
 * 编译：clang --target=aarch64-linux-android21 -O2 -fPIC -shared
 * 链接：rust-lld（经包装脚本）；NEEDED libc.so 由空存根产生（加载时对真 bionic 解析）
 */
typedef unsigned int u32;
void dbg_ensure(void);
static void raw_exit_group(int code);
typedef unsigned long size_t_;
typedef unsigned long long u64;

/* ---------------- 三个符号的本体实现（与 Rust 版等价） ---------------- */
static size_t_ dec(const char **p, const char *end, u32 *out) {
    const char *s = *p;
    unsigned char c = (unsigned char)*s;
    u32 cp; int n;
    if (c < 0x80) { cp = c; n = 0; }
    else if ((c & 0xE0) == 0xC0) { cp = c & 0x1F; n = 1; }
    else if ((c & 0xF0) == 0xE0) { cp = c & 0x0F; n = 2; }
    else if ((c & 0xF8) == 0xF0) { cp = c & 0x07; n = 3; }
    else return (size_t_)-1;
    if (s + n >= end && s + n != end - 1 + 1) { /* 边界在循环里逐字节判断 */ }
    for (int i = 1; i <= n; i++) {
        if (s + i >= end) return (size_t_)-1;
        unsigned char cc = (unsigned char)s[i];
        if ((cc & 0xC0) != 0x80) return (size_t_)-1;
        cp = (cp << 6) | (cc & 0x3F);
    }
    if (cp > 0x10FFFF || (cp >= 0xD800 && cp <= 0xDFFF)) return (size_t_)-1;
    if ((n == 1 && cp < 0x80) || (n == 2 && cp < 0x800) || (n == 3 && cp < 0x10000))
        return (size_t_)-1;
    *p = s + n + 1;
    *out = cp;
    return 0;
}

size_t_ mbsnrtowcs(u32 *dst, const char **src, size_t_ nmc, size_t_ len, void *ps) {
    (void)ps;
    const char *s; size_t_ count = 0;
    dbg_ensure();
    if (!src || !*src) return 0;
    s = *src;
    const char *end = s + nmc;
    while (s < end) {
        u32 cp; const char *t = s;
        if (dec(&t, end, &cp) == (size_t_)-1) { *src = s; return (size_t_)-1; }
        if (dst) {
            if (count == len) { *src = s; return count; }
            dst[count] = cp;
        }
        count++;
        s = t;
        if (cp == 0) { *src = 0; return count - 1; }
    }
    *src = s;
    return count;
}

static int enc(u32 cp, char *b) {
    if (cp < 0x80) { b[0] = (char)cp; return 1; }
    if (cp < 0x800) { b[0] = (char)(0xC0 | (cp >> 6)); b[1] = (char)(0x80 | (cp & 0x3F)); return 2; }
    if (cp < 0x10000) {
        b[0] = (char)(0xE0 | (cp >> 12)); b[1] = (char)(0x80 | ((cp >> 6) & 0x3F));
        b[2] = (char)(0x80 | (cp & 0x3F)); return 3;
    }
    b[0] = (char)(0xF0 | (cp >> 18)); b[1] = (char)(0x80 | ((cp >> 12) & 0x3F));
    b[2] = (char)(0x80 | ((cp >> 6) & 0x3F)); b[3] = (char)(0x80 | (cp & 0x3F));
    return 4;
}

size_t_ wcsnrtombs(char *dst, const u32 **src, size_t_ nwc, size_t_ len, void *ps) {
    (void)ps;
    dbg_ensure();
    if (!src || !*src) return 0;
    const u32 *ws = *src;
    size_t_ used = 0;
    for (size_t_ i = 0; i < nwc; i++) {
        u32 cp = ws[i];
        char tmp[4];
        if (cp > 0x10FFFF || (cp >= 0xD800 && cp <= 0xDFFF)) { *src = ws + i; return (size_t_)-1; }
        int n = enc(cp, tmp);
        if (dst) {
            if (used + (size_t_)n > len) { *src = ws + i; return used; }
            for (int k = 0; k < n; k++) dst[used + k] = tmp[k];
        }
        used += n;
        if (cp == 0) { *src = 0; return used - 1; }
    }
    *src = ws + nwc;
    return used;
}

int __register_atfork(void (*a)(void), void (*b)(void), void (*c)(void), void *d) {
    (void)a; (void)b; (void)c; (void)d;
    dbg_ensure();
    return 0;
}


/* ---------------- native 崩溃信号捕获 ---------------- */
extern int sigaction(int, const void *, void *);
extern int open(const char *, int, ...);
extern long read(int, void *, unsigned long);
extern long write(int, const void *, size_t_);
extern int close(int);
extern void _exit(int) __attribute__((noreturn));

#define SIGILL_ 4
#define SIGABRT_ 6
#define SIGBUS_ 7
#define SIGFPE_ 8
#define SIGSEGV_ 11
#define SA_SIGINFO_ 0x4

/* bionic struct sigaction（arm64/arm 通用近似布局）:
 * handler 指针 @0；其后 mask(8B arm64/4B arm)；flags 跟随。给 256B 缓冲，
 * 两种候选布局都尝试（flags@16 / flags@8）。 */
struct sa256 { unsigned long long b[32]; };

static const char *kPath = "/sdcard/duboku_crash.txt";
#define O_WRONLY_ 1
#define O_CREAT_ 0100
#define O_APPEND_ 02000

static void append(const char *buf, unsigned long n) {
    int fd = open(kPath, O_WRONLY_ | O_CREAT_ | O_APPEND_, 0666);
    if (fd < 0) return;
    write(fd, buf, n);
    close(fd);
}

static int hx(unsigned long long v, char *out) {
    static const char H[] = "0123456789abcdef";
    char t[16]; int i = 16, n = 0;
    if (v == 0) { out[0] = '0'; return 1; }
    while (v && i > 0) { t[--i] = H[v & 0xF]; v >>= 4; }
    while (i < 16) out[n++] = t[i++];
    return n;
}

#if defined(__aarch64__)
#define UC_FAULT 48
#define UC_LR    288
#define UC_SP    296
#define UC_PC    304
#else
/* arm32: mcontext 在 uc_stack(20B) 后；regs[13](52B) 后是 arm_pc(4B)@72+... 粗略 */
#define UC_FAULT 24
#define UC_LR    76
#define UC_SP    80
#define UC_PC    72
#endif

static void handler(int sig, void *si, void *ucv) {
    char line[640];
    unsigned long n = 0;
    unsigned char *uc = (unsigned char *)ucv;
    unsigned char *sip = (unsigned char *)si;
#define P(s) do { const char *_x = s; unsigned long _l = sizeof(s) - 1; \
    for (unsigned long _i = 0; _i < _l; _i++) line[n++] = _x[_i]; } while (0)
    P("NCRASH sig=0x");
    n += hx(sig, line + n);
    P(" addr=");
    n += hx(*(unsigned long long *)(sip + 16), line + n);
    P(" pc=");
    n += hx(*(unsigned long long *)(uc + UC_PC), line + n);
    P(" lr=");
    n += hx(*(unsigned long long *)(uc + UC_LR), line + n);
    P(" sp=");
    n += hx(*(unsigned long long *)(uc + UC_SP), line + n);
    P(" fault=");
    n += hx(*(unsigned long long *)(uc + UC_FAULT), line + n);
    P("\nuc=");
    for (int i = 0; i < 24; i++)
        n += hx(*(unsigned long long *)(uc + i * 8), line + n);
    line[n++] = '\n';
    append(line, n);
    raw_exit_group(99);
}

static int try_install(int sig) {
    struct sa256 a;
    for (int i = 0; i < 32; i++) a.b[i] = 0;
    a.b[0] = (unsigned long long)(void *)&handler;
    a.b[2] = SA_SIGINFO_;           /* 布局 A: flags@16 */
    if (sigaction(sig, &a, 0) == 0) return 1;
    for (int i = 0; i < 32; i++) a.b[i] = 0;
    a.b[0] = (unsigned long long)(void *)&handler;
    a.b[1] = SA_SIGINFO_;           /* 布局 B: flags@8 */
    if (sigaction(sig, &a, 0) == 0) return 1;
    return 0;
}

__attribute__((constructor))
static void dbg_ctor(void) { dbg_ensure(); }

void dbg_ensure(void) {
    static int done;
    if (done) return;
    done = 1;
    char line[64];
    unsigned long n = 0;
    const char *h = "NINIT ";
    while (*h) line[n++] = *h++;
    line[n++] = try_install(SIGILL_) ? '1' : '0';
    line[n++] = try_install(SIGABRT_) ? '1' : '0';
    line[n++] = try_install(SIGBUS_) ? '1' : '0';
    line[n++] = try_install(SIGFPE_) ? '1' : '0';
    line[n++] = try_install(SIGSEGV_) ? '1' : '0';
    line[n++] = '\n';
    append(line, n);
}
/* ---------------- exit/_exit 拦截（区分主动退出 vs SIGKILL） ---------------- */
static void raw_exit_group(int code) {
#if defined(__aarch64__)
    __asm__ volatile("mov x8, #94\n mov x0, %0\n svc #0" :: "r"(code) : "x8", "x0");
#else
    register int r7 __asm__("r7") = 248;
    register int r0 __asm__("r0") = code;
    __asm__ volatile("svc #0" : : "r"(r7), "r"(r0) : "memory");
#endif
    for (;;) {}
}

void _exit(int code) {
    char line[64];
    unsigned long n = 0;
    const char *h = "NEXIT code=";
    while (*h) line[n++] = *h++;
    if (code < 0) { line[n++] = '-'; code = -code; }
    n += hx((unsigned long long)(unsigned)code, line + n);
    line[n++] = '\n';
    append(line, n);
    raw_exit_group(code);
}

void exit(int code) __attribute__((weak, alias("_exit")));

/* ---------------- kill/tgkill/abort 拦截（定位延迟自毁者） ---------------- */
extern int getpid(void);
static int read_comm(char *out, int cap) {
    /* /proc/self/task/<tid>/comm */
    char path[64];
    int tid;
    int fd, n, i = 0;
#if defined(__aarch64__)
    __asm__ volatile("mov %0, xzr" : "=r"(tid)); /* 占位，下面用 gettid syscall */
#endif
    /* gettid = syscall 178 (arm64) / 224 (arm32)? 直接用 syscall 号： */
#if defined(__aarch64__)
    __asm__ volatile("mov x8, #178\n svc #0" : "=r"(tid) :: "x8", "memory");
#else
    {
        register int r7 __asm__("r7") = 224;
        register int r0 __asm__("r0");
        __asm__ volatile("svc #0" : "=r"(r0) : "r"(r7) : "memory");
        tid = r0;
    }
#endif
    n = 0;
    /* 手工拼 /proc/self/task/%d/comm */
    {
        const char *p1 = "/proc/self/task/";
        const char *p2 = "/comm";
        while (p1[i]) path[n++] = p1[i++];
        if (tid <= 0) { path[n++] = 's'; path[n++] = 'e'; path[n++] = 'l'; path[n++] = 'f'; }
        else n += hx(tid, path + n);
        i = 0;
        while (p2[i]) path[n++] = p2[i++];
        path[n] = 0;
    }
    fd = open(path, 0 /*O_RDONLY*/, 0);
    if (fd < 0) { out[0] = '?'; out[1] = 0; return 1; }
    {
        int k = 0, c;
        char b[64];
        long r = read(fd, b, 63);
        close(fd);
        if (r < 0) r = 0;
        b[r] = 0;
        while (k < r && k < cap - 1 && b[k] >= 32) { out[k] = b[k]; k++; }
        out[k] = 0;
        return k;
    }
}

static void log_kill(const char *what, int a, int b_) {
    char line[160];
    char comm[64];
    unsigned long n = 0;
    int cl;
    const char *h;
    n = 0;
    h = what;
    while (*h) line[n++] = *h++;
    line[n++] = ' ';
    n += hx(a, line + n);
    line[n++] = ' ';
    n += hx(b_, line + n);
    cl = read_comm(comm, sizeof(comm));
    line[n++] = ' ';
    for (int i = 0; i < cl; i++) line[n++] = comm[i];
    line[n++] = '\n';
    append(line, n);
}

int kill(int pid, int sig) {
    log_kill("NKILL", pid, sig);
    /* 转发：真正执行 kill —— 用 tgkill syscall（131 arm64 / 261? arm32 用 268? 不确定则 syscall kill=129/37） */
#if defined(__aarch64__)
    {
        register long x8 __asm__("x8") = 129; /* __NR_kill */
        register long x0 __asm__("x0") = pid;
        register long x1 __asm__("x1") = sig;
        __asm__ volatile("svc #0" : "=r"(x0) : "r"(x8), "r"(x0), "r"(x1) : "memory");
        return (int)x0;
    }
#else
    {
        register int r7 __asm__("r7") = 37; /* __NR_kill arm32 */
        register int r0 __asm__("r0") = pid;
        register int r1 __asm__("r1") = sig;
        __asm__ volatile("svc #0" : "=r"(r0) : "r"(r7), "r"(r0), "r"(r1) : "memory");
        return r0;
    }
#endif
}

int tgkill(int tgid, int tid, int sig) {
    log_kill("NTGKILL", tid, sig);
#if defined(__aarch64__)
    {
        register long x8 __asm__("x8") = 131; /* __NR_tgkill */
        register long x0 __asm__("x0") = tgid;
        register long x1 __asm__("x1") = tid;
        register long x2 __asm__("x2") = sig;
        __asm__ volatile("svc #0" : "=r"(x0) : "r"(x8), "r"(x0), "r"(x1), "r"(x2) : "memory");
        return (int)x0;
    }
#else
    {
        register int r7 __asm__("r7") = 268; /* __NR_tgkill arm32 */
        register int r0 __asm__("r0") = tgid;
        register int r1 __asm__("r1") = tid;
        register int r2 __asm__("r2") = sig;
        __asm__ volatile("svc #0" : "=r"(r0) : "r"(r7), "r"(r0), "r"(r1), "r"(r2) : "memory");
        return r0;
    }
#endif
}

void abort(void) {
    log_kill("NABORT", 0, 6);
    raw_exit_group(134);
    for (;;) {}
}
