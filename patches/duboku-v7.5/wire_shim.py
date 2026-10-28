#!/usr/bin/env python3
"""
wire_shim.py v2 — 把 libdubokushim.so 接入 libdubokutv.so 的依赖链（arm64 / armeabi-v7a）

前提：目标 .so 已经过 patch_dubokutv_so.py（fseeko→fseek 等改名）与 add_dt_hash.py
（DT_GNU_HASH→重建 SysV DT_HASH，原地写入，文件偏移均未变）。

步骤：
 1. 按 round-1/round-3 记录的精确文件偏移，把三个改名槽位恢复原名（内容先断言、
    定长写入）：
      mbsrtowcs→mbsnrtowcs、wcsrtombs→wcsnrtombs、getpid→__register_atfork
    恢复后这两个 n 变体与 __register_atfork 将从 shim 库解析（真 5 参语义，
    消除 4/5 参错位隐患）；原始 4 参 mbsrtowcs/wcsrtombs 仍解析到 libc。
 2. 在 gnu.hash 原区域整体重建 SysV 哈希表（DT_HASH 标签与值由 add_dt_hash 已改好，
    此处只刷新表内容以匹配恢复后的符号名）。
 3. dynstr 尾部布局为 "libm.so\\0libdubokutv.so\\0"（NEEDED 与 SONAME 紧邻、位于
    字符串区末尾）。原地改写为 "libdubokushim.so\\0"+NUL 填充——DT_NEEDED(libm.so)
    的 d_val 无需改动即指向新库名；SONAME 读到的字符串变化无功能影响
    （SONAME 仅用于"已加载库按名匹配"，本库按路径加载，不受影响）。
不变量：全程文件大小不变（强断言）。

用法：python3 wire_shim.py <arm64的libdubokutv.so> <v7a的libdubokutv.so>
"""
import struct
import sys

# patch_dubokutv_so.py（round-1/round-3）输出记录的槽位文件偏移：(offset, 当前改名值, 恢复原名)
FIXES = {
    "arm64-v8a": [
        (0x2261B, "mbsrtowcs", "mbsnrtowcs"),
        (0x225C6, "wcsrtombs", "wcsnrtombs"),
        (0x10A75, "getpid", "__register_atfork"),
    ],
    "armeabi-v7a": [
        (0x1E4A9, "mbsrtowcs", "mbsnrtowcs"),
        (0x1E454, "wcsrtombs", "wcsnrtombs"),
        (0x0C8F9, "getpid", "__register_atfork"),
    ],
}
DT_NEEDED, DT_NULL = 1, 0
SHIM = b"libdubokushim.so\x00"


def elf_hash(name: bytes) -> int:
    h = 0
    for c in name:
        h = ((h << 4) + c) & 0xFFFFFFFF
        g = h & 0xF0000000
        if g:
            h ^= g >> 24
        h &= (~g) & 0xFFFFFFFF
    return h


def load(path):
    data = bytearray(open(path, "rb").read())
    is64 = data[4] == 2
    e_machine, = struct.unpack_from("<H", data, 0x12)
    abi = {183: "arm64-v8a", 40: "armeabi-v7a"}.get(e_machine)
    if is64:
        e_shoff, = struct.unpack_from("<Q", data, 0x28)
        e_phoff, = struct.unpack_from("<Q", data, 0x20)
        e_shentsize, e_shnum = struct.unpack_from("<HH", data, 0x3A)
        e_phentsize, = struct.unpack_from("<H", data, 0x36)
    else:
        e_shoff, = struct.unpack_from("<I", data, 0x20)
        e_phoff, = struct.unpack_from("<I", data, 0x1C)
        e_shentsize, e_shnum = struct.unpack_from("<HH", data, 0x2E)
        e_phentsize, = struct.unpack_from("<H", data, 0x2A)

    secs = []
    for i in range(e_shnum):
        o = e_shoff + i * e_shentsize
        if is64:
            v = struct.unpack_from("<IIQQQQIIQQ", data, o)
            link = struct.unpack_from("<I", data, o + 40)[0]
        else:
            v = struct.unpack_from("<IIIIIIIIII", data, o)
            link = struct.unpack_from("<I", data, o + 24)[0]
        secs.append(dict(type=v[1], addr=v[3], offset=v[4], size=v[5], link=link))

    dynsym = next(s for s in secs if s["type"] == 11)
    dynstr = secs[dynsym["link"]]
    gnuhash = next(s for s in secs if s["type"] == 0x6FFFFFF6)

    dyn_off = None
    for i in range(64):
        o = e_phoff + i * e_phentsize
        if o + e_phentsize > len(data):
            break
        if is64:
            pt, _, po = struct.unpack_from("<IIQ", data, o)
        else:
            pt, po = struct.unpack_from("<II", data, o)
        if pt == 2:
            dyn_off = po
            break
    assert dyn_off and abi, f"{path}: PT_DYNAMIC/ABI 未识别"
    return data, is64, abi, dynsym, dynstr, gnuhash, dyn_off


def cstr(data, off):
    return bytes(data[off:data.index(0, off)])


def patch(path):
    size0 = len(open(path, "rb").read())
    data, is64, abi, dynsym, dynstr, gnuhash, dyn_off = load(path)
    ds_off, ds_size = dynstr["offset"], dynstr["size"]
    esize = 24 if is64 else 16
    fmt = "<QQ" if is64 else "<II"
    dyn_esize = 16 if is64 else 8

    # 1) 定点恢复符号原名（内容断言 + 定长写入）
    for off, cur, orig in FIXES[abi]:
        got = cstr(data, off)
        assert got == cur.encode(), f"{path}: @0x{off:x} 期望 {cur!r} 实际 {got!r}"
        wb = orig.encode() + b"\x00"
        assert len(wb) <= len(cur) + 17  # 槽位含改名时的 NUL 填充余量
        data[off:off + len(wb)] = wb
        print(f"  {abi}: @0x{off:x}  {cur} -> {orig}")
    assert len(data) == size0, "restore 改变了文件大小！"

    # 2) 重建 SysV 哈希表（覆盖恢复后的符号名；DT_HASH 标签/值已由 add_dt_hash 设置）
    nsyms = dynsym["size"] // esize
    names = []
    for i in range(nsyms):
        o = dynsym["offset"] + i * esize
        st_name, = struct.unpack_from("<I", data, o)
        names.append(cstr(data, ds_off + st_name) if st_name else b"")
    cap = region // 4 - 2 - nsyms if (region := gnuhash["size"]) else 0
    nbucket = cap
    while nbucket > 1 and any(nbucket % p == 0 for p in range(2, int(nbucket ** 0.5) + 1)):
        nbucket -= 1
    buckets = [0] * nbucket
    chains = [0] * nsyms
    last = [0] * nbucket
    for i in range(1, nsyms):
        if not names[i]:
            continue
        b = elf_hash(names[i]) % nbucket
        if buckets[b] == 0:
            buckets[b] = i
        else:
            chains[last[b]] = i
        last[b] = i
    table = struct.pack("<II", nbucket, nsyms)
    table += struct.pack(f"<{nbucket}I", *buckets)
    table += struct.pack(f"<{nsyms}I", *chains)
    assert len(table) <= region
    off = gnuhash["offset"]
    data[off:off + region] = table + b"\x00" * (region - len(table))
    assert len(data) == size0, "hash 重建改变了文件大小！"

    # 3) dynstr 尾部 "libm.so\0libdubokutv.so\0" 原地改写为 shim 库名
    #    （经动态段 d_val 定位，改写前断言精确布局）
    libm_val = None
    for i in range(128):
        o = dyn_off + i * dyn_esize
        tag, val = struct.unpack_from(fmt, data, o)
        if tag == DT_NULL:
            break
        if tag == DT_NEEDED and cstr(data, ds_off + val) == b"libm.so":
            libm_val = val
    assert libm_val is not None, f"{path}: 未找到 NEEDED(libm.so)"
    tail = ds_off + libm_val
    expect = b"libm.so\x00libdubokutv.so\x00"
    assert bytes(data[tail:tail + len(expect)]) == expect, \
        f"{path}: dynstr 尾部布局与预期不符: {bytes(data[tail:tail + 24])!r}"
    assert len(expect) >= len(SHIM)
    data[tail:tail + len(expect)] = SHIM + b"\x00" * (len(expect) - len(SHIM))
    assert len(data) == size0, "库名改写改变了文件大小！"

    # 4) 自检
    assert cstr(data, ds_off + libm_val) == SHIM.rstrip(b"\x00")
    def lookup(nm):
        idx = buckets[elf_hash(nm) % nbucket]
        while idx:
            if names[idx] == nm:
                return True
            idx = chains[idx]
        return False
    for nm in (b"Java_com_supertws_dubokutv_data_util_TTHp_gS",
               b"mbsnrtowcs", b"wcsnrtombs", b"__register_atfork", b"mbsrtowcs"):
        assert lookup(nm), f"{path}: 哈希查不到 {nm}"

    open(path, "wb").write(data)
    print(f"  {path}: nsyms={nsyms} nbucket={nbucket} NEEDED libm.so -> libdubokushim.so "
          f"（d_val=0x{libm_val:x} 未动）size {size0} 不变 ✓")


if __name__ == "__main__":
    patch(sys.argv[1])
    patch(sys.argv[2])
    print("WIRE OK")
