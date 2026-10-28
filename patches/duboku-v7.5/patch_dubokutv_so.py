#!/usr/bin/env python3
"""
patch_dubokutv_so.py — Android 5.1 (API 22) 兼容补丁 for libdubokutv.so

根因：厂商用 NDK r29 按 API 23 编译 libdubokutv.so，其 .dynsym 有 4 个 GLOBAL
未定义符号是 bionic API 24 才引入的：fseeko / ftello / mbsnrtowcs / wcsnrtombs。
Android 5.1 的动态链接器在 dlopen 时急切解析全部导入符号（无懒绑定），
找不到即 dlopen failed: cannot locate symbol "fseeko"
→ System.loadLibrary("dubokutv") 抛 UnsatisfiedLinkError → 应用闪退。

修法：在 .dynstr 内把 4 个符号名原位改写为 API 1 就存在的等价/近似等价短名
（新名均不长于原名，用 NUL 填充，不改任何偏移、不改文件大小）：

  fseeko      -> fseek      (arm32/x86 32 位下 off_t 与 long 同宽，LFS 别名，完全等价)
  ftello      -> ftell      (同上)
  mbsnrtowcs  -> mbsrtowcs  (近似：不限输入字节数；仅 libc++ 宽字符 locale 内部路径)
  wcsnrtombs  -> wcsrtombs  (同上)

符号版本说明：.so 带 DT_VERNEED(@LIBC)，但 API < 23 的链接器忽略符号版本、
按裸名解析，因此裸名改写即可命中 Android 5.1 的 libc 导出。

用法：python3 patch_dubokutv_so.py <libdubokutv.so> [更多.so...]
"""
import sys

# 原名 -> (新名, 语义说明)
RENAMES = {
    "fseeko":     ("fseek",     "32 位下完全等价 (LFS 别名)"),
    "ftello":     ("ftell",     "32 位下完全等价 (LFS 别名)"),
    "mbsnrtowcs": ("mbsrtowcs", "近似等价：不限输入字节数 (libc++ locale 内部路径)"),
    "wcsnrtombs": ("wcsrtombs", "近似等价：不限输入字节数 (libc++ locale 内部路径)"),
    # introduced=23（libc.map.txt），Android 5.1 无此导出，真机 dlopen 报
    # "cannot locate symbol __register_atfork"（2026-10-24 信标实测）。
    # getpid 为 API 1 纯函数，多余实参按 ABI 被忽略 ≈ no-op；
    # 原语义仅注册 fork 处理器，TV 应用不 fork，无影响。
    "__register_atfork": ("getpid", "no-op 替代 (fork 处理器注册，TV 应用无影响)"),
}


def patch(path: str) -> int:
    with open(path, "rb") as f:
        data = bytearray(f.read())

    if data[:4] != b"\x7fELF":
        raise SystemExit(f"{path}: 不是 ELF 文件")
    ei_class = data[4]          # 1=ELF32, 2=ELF64
    ei_data = data[5]           # 1=LSB
    if ei_data != 1:
        raise SystemExit(f"{path}: 只支持小端")
    is64 = ei_class == 2

    import struct
    end = "<"

    if is64:
        e_shoff, = struct.unpack_from(end + "Q", data, 0x28)
        e_shentsize, e_shnum, e_shstrndx = struct.unpack_from(end + "HHH", data, 0x3A)
    else:
        e_shoff, = struct.unpack_from(end + "I", data, 0x20)
        e_shentsize, e_shnum, e_shstrndx = struct.unpack_from(end + "HHH", data, 0x2E)

    def shdr(i):
        off = e_shoff + i * e_shentsize
        if is64:
            name, typ, flags, addr, offset, size, link, info, align, entsize = \
                struct.unpack_from(end + "IIQQQQIIQQ", data, off)
        else:
            name, typ, flags, addr, offset, size, link, info, align, entsize = \
                struct.unpack_from(end + "IIIIIIIIII", data, off)
        return name, typ, offset, size, link, entsize

    # 定位 .dynstr（SHT_STRTAB 且被 .dynsym 的 sh_link 指向的那个，杜绝误伤普通 .strtab）
    dynstr_off = dynstr_size = None
    for i in range(e_shnum):
        _, typ, _, _, linked_from, _ = shdr(i)
        if typ == 11:  # SHT_DYNSYM
            # shdr 返回 (name, typ, offset, size, link, entsize)，link 指向 .dynstr
            _, _, off, size, _, _ = shdr(linked_from)
            dynstr_off, dynstr_size = off, size
            break
    if dynstr_off is None:
        raise SystemExit(f"{path}: 找不到 .dynsym/.dynstr")

    patched = 0
    region = data[dynstr_off:dynstr_off + dynstr_size]
    for old, (new, note) in RENAMES.items():
        old_b, new_b = old.encode(), new.encode()
        if len(new_b) > len(old_b):
            raise SystemExit(f"{path}: 新名 {new} 比原名 {old} 长，不能原位改写")
        needle = old_b + b"\x00"
        start = 0
        while True:
            idx = region.find(needle, start)
            if idx < 0:
                break
            # 只整词匹配（needle 已含结尾 NUL）；再校验前一字节是 NUL 或为串首，避免误配
            prev_ok = idx == 0 or region[idx - 1] == 0
            if prev_ok:
                abs_off = dynstr_off + idx
                # 原位覆写：新名 + NUL + 剩余填 NUL
                data[abs_off:abs_off + len(old_b) + 1] = new_b + b"\x00" * (len(old_b) + 1 - len(new_b))
                region = data[dynstr_off:dynstr_off + dynstr_size]
                print(f"  {path}: offset 0x{abs_off:08x}  {old:<11} -> {new:<10} # {note}")
                patched += 1
            start = idx + 1

    if patched:
        with open(path, "wb") as f:
            f.write(data)
    print(f"  {path}: 共改写 {patched} 处（预期 4，若某符号本就不存在则少于此数）")
    return patched


if __name__ == "__main__":
    if len(sys.argv) < 2:
        raise SystemExit(__doc__)
    total = 0
    for p in sys.argv[1:]:
        total += patch(p)
    print(f"TOTAL patched: {total}")
