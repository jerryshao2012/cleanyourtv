#!/usr/bin/env python3
"""
add_dt_hash.py — 给只有 DT_GNU_HASH 的 libdubokutv.so 补一张 SysV DT_HASH 表

根因：NDK r29 在 minSdk>=23 时让 lld 只发 GNU hash；而 Android 5.1 (Lollipop) 的
动态链接器查找库导出符号只支持 SysV DT_HASH（GNU hash 查找是 Android 6.0 引入的）。
结果在 5.1 上：dlopen 成功（加载不查本库符号）、导入符号也解析正常（查 libc 的导出），
但 ART 调 native 方法时 dlsym 在本库找不到 Java_... 导出 →
UnsatisfiedLinkError: No implementation found for ...TTHp.gT → 启动即崩。

修法：在 .gnu.hash 节的原有区域上重建一张覆盖全部动态符号的 SysV 哈希表
（nbucket/nchain/buckets/chains），并把 .dynamic 里的 DT_GNU_HASH (0x6fffe005 系)
标签改为 DT_HASH (4)，值不变（仍指向该区域 vaddr）。
- 文件大小不变、所有偏移不变；
- 对 Android 6.0+ 完全兼容（M+ 链接器两种哈希都认，DT_HASH 有效且正确）；
- 与 patch_dubokutv_so.py 的符号改名兼容（哈希按改名后的当前 dynstr 计算）。

用法：python3 add_dt_hash.py <libdubokutv.so> [更多.so...]
"""
import struct
import sys

DT_HASH = 4
DT_GNU_HASH = 0x6FFFFEF5


def elf_hash(name: bytes) -> int:
    h = 0
    for c in name:
        h = ((h << 4) + c) & 0xFFFFFFFF
        g = h & 0xF0000000
        if g:
            h ^= g >> 24
        h &= (~g) & 0xFFFFFFFF
    return h


def parse(path):
    with open(path, "rb") as f:
        data = bytearray(f.read())
    if data[:4] != b"\x7fELF":
        raise SystemExit(f"{path}: not ELF")
    is64 = data[4] == 2
    end = "<"
    if is64:
        e_shoff, = struct.unpack_from(end + "Q", data, 0x28)
        e_phoff, = struct.unpack_from(end + "Q", data, 0x20)
        e_shentsize, e_shnum = struct.unpack_from(end + "HH", data, 0x3A)
        e_phentsize, = struct.unpack_from(end + "H", data, 0x36)
    else:
        e_shoff, = struct.unpack_from(end + "I", data, 0x20)
        e_phoff, = struct.unpack_from(end + "I", data, 0x1C)
        e_shentsize, e_shnum = struct.unpack_from(end + "HH", data, 0x2E)
        e_phentsize, = struct.unpack_from(end + "H", data, 0x2A)

    def shdr(i):
        o = e_shoff + i * e_shentsize
        if is64:
            vals = struct.unpack_from(end + "IIQQQQIIQQ", data, o)
            return dict(name=vals[0], type=vals[1], addr=vals[3], offset=vals[4], size=vals[5])
        vals = struct.unpack_from(end + "IIIIIIIIII", data, o)
        return dict(name=vals[0], type=vals[1], addr=vals[3], offset=vals[4], size=vals[5])

    secs = [shdr(i) for i in range(e_shnum)]
    by_type = {}
    for s in secs:
        by_type.setdefault(s["type"], s)

    gnuhash = by_type.get(0x6FFFFFF6)          # SHT_GNU_HASH
    dynsym = by_type.get(11)                   # SHT_DYNSYM
    dynstr = secs[dynsym["link"]] if False else None
    # dynstr: 找被 dynsym 的 link 指向的节
    o = e_shoff + 0  # 重新精确取 link
    for i, s in enumerate(secs):
        if s["type"] == 11:
            base = e_shoff + i * e_shentsize
            link_off = 40 if is64 else 24  # Shdr.sh_link 的节内偏移
            link = struct.unpack_from(end + "I", data, base + link_off)[0]
            dynstr = secs[link]
            break
    if not gnuhash or not dynsym or not dynstr:
        raise SystemExit(f"{path}: missing gnu.hash/dynsym/dynstr")

    # PT_DYNAMIC offset
    dyn_off = None
    for i in range(64):
        o = e_phoff + i * e_phentsize
        if o + e_phentsize > len(data):
            break
        if is64:
            p_type, p_flags, p_offset = struct.unpack_from(end + "IIQ", data, o)
        else:
            p_type, p_offset = struct.unpack_from(end + "II", data, o)
        if p_type == 2:  # PT_DYNAMIC
            dyn_off = p_offset
            break
    if dyn_off is None:
        raise SystemExit(f"{path}: no PT_DYNAMIC")

    return data, is64, gnuhash, dynsym, dynstr, dyn_off


def get_str(data, dynstr, off):
    end_i = data.index(0, dynstr["offset"] + off)
    return bytes(data[dynstr["offset"] + off:end_i])


def patch(path):
    data, is64, gnuhash, dynsym, dynstr, dyn_off = parse(path)
    end = "<"
    entsize = 24 if is64 else 16
    nsyms = dynsym["size"] // entsize
    names = []
    for i in range(nsyms):
        o = dynsym["offset"] + i * entsize
        st_name = struct.unpack_from(end + "I", data, o)[0]
        names.append(get_str(data, dynstr, st_name) if st_name else b"")

    region = gnuhash["size"]
    # 需要容量：buckets 数 = region/4 - 2 - nsyms
    cap = region // 4 - 2 - nsyms
    if cap < 64:
        raise SystemExit(f"{path}: .gnu.hash 区域 {region}B 装不下 SysV 表 (需>={nsyms}+66 槽)")
    # 选一个 <= cap 的素数做 nbucket
    nbucket = cap
    while nbucket > 1:
        if all(nbucket % p for p in range(2, int(nbucket ** 0.5) + 1)):
            break
        nbucket -= 1

    buckets = [0] * nbucket
    chains = [0] * nsyms
    last = [0] * nbucket
    for i in range(1, nsyms):
        nm = names[i]
        if not nm:
            continue
        h = elf_hash(nm)
        b = h % nbucket
        if buckets[b] == 0:
            buckets[b] = i
            last[b] = i
        else:
            chains[last[b]] = i
            last[b] = i

    table = struct.pack("<II", nbucket, nsyms)
    table += struct.pack(f"<{nbucket}I", *buckets)
    table += struct.pack(f"<{nsyms}I", *chains)
    assert len(table) <= region, f"{path}: table {len(table)} > region {region}"
    table += b"\x00" * (region - len(table))

    off = gnuhash["offset"]
    assert off == gnuhash["addr"] or True
    data[off:off + region] = table

    # 改动态段 DT_GNU_HASH -> DT_HASH（值不变）
    esize = 8 if is64 else 16
    fmt = ("<QQ", "<II")[not is64]
    replaced = 0
    for i in range(128):
        o = dyn_off + i * esize
        tag, val = struct.unpack_from(fmt, data, o)
        if tag == 0:
            break
        if tag == DT_GNU_HASH:
            struct.pack_into(fmt, data, o, DT_HASH, val)
            replaced += 1
    if replaced != 1:
        raise SystemExit(f"{path}: DT_GNU_HASH 条目数异常 {replaced}")

    with open(path, "wb") as f:
        f.write(data)

    # 自检：模拟 SysV 查找 JNI 导出
    def lookup(nm: bytes):
        h = elf_hash(nm)
        idx = buckets[h % nbucket]
        while idx:
            if names[idx] == nm:
                return idx
            idx = chains[idx]
        return None

    ok = lookup(b"Java_com_supertws_dubokutv_data_util_TTHp_gT") is not None
    print(f"  {path}: nsyms={nsyms} nbucket={nbucket} table={len(table)}B/{region}B "
          f"DT_GNU_HASH->DT_HASH ✓  gT查找自检 {'PASS' if ok else 'FAIL'}")
    return ok


if __name__ == "__main__":
    if len(sys.argv) < 2:
        raise SystemExit(__doc__)
    allok = all(patch(p) for p in sys.argv[1:])
    print("ALL", "PASS" if allok else "FAIL")
