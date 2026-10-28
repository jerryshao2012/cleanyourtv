#![no_std]
// libdubokushim.so — Android 5.1 兼容 shim（freestanding，无任何依赖）
// 提供 bionic API 23/24 才引入而 libdubokutv.so (NDK r29, minSdk23) 引用的三个符号。

use core::ffi::{c_char, c_int, c_void};

type SizeT = usize; // arm64/armv7 LP32? armv7 android 是 32 位 usize ✓ 与 size_t 一致

#[no_mangle]
pub extern "C" fn __register_atfork(
    _prepare: *const c_void,
    _parent: *const c_void,
    _child: *const c_void,
    _dso: *mut c_void,
) -> c_int {
    0 // no-op：TV 应用不 fork
}

// UTF-8 解码一个码点；返回 (消费字节数, 码点)，非法返回 None
fn utf8_dec(b: &[u8]) -> Option<(usize, u32)> {
    let c = b[0];
    let (cp0, n): (u32, usize) = if c < 0x80 {
        (c as u32, 1)
    } else if c & 0xE0 == 0xC0 {
        (c as u32 & 0x1F, 2)
    } else if c & 0xF0 == 0xE0 {
        (c as u32 & 0x0F, 3)
    } else if c & 0xF8 == 0xF0 {
        (c as u32 & 0x07, 4)
    } else {
        return None;
    };
    if b.len() < n {
        return None;
    }
    let mut cp = cp0;
    for i in 1..n {
        let cc = b[i];
        if cc & 0xC0 != 0x80 {
            return None;
        }
        cp = cp << 6 | (cc as u32 & 0x3F);
    }
    if cp > 0x10_0000 || (0xD800..=0xDFFF).contains(&cp) {
        return None;
    }
    if (n == 2 && cp < 0x80) || (n == 3 && cp < 0x800) || (n == 4 && cp < 0x1_0000) {
        return None; // 过长编码
    }
    Some((n, cp))
}

fn utf8_enc(cp: u32, out: &mut [u8; 4]) -> usize {
    // volatile 写：阻止 LLVM 把连续栈上存储合并成 memcpy 调用
    //（本库零依赖，Lollipop 链接器闭包查找无法解析 memcpy）
    if cp < 0x80 {
        unsafe { (out.as_mut_ptr()).write_volatile(cp as u8) };
        1
    } else if cp < 0x800 {
        unsafe {
            out.as_mut_ptr().write_volatile(0xC0 | (cp >> 6) as u8);
            out.as_mut_ptr().add(1).write_volatile(0x80 | (cp & 0x3F) as u8);
        }
        2
    } else if cp < 0x1_0000 {
        unsafe {
            out.as_mut_ptr().write_volatile(0xE0 | (cp >> 12) as u8);
            out.as_mut_ptr().add(1).write_volatile(0x80 | ((cp >> 6) & 0x3F) as u8);
            out.as_mut_ptr().add(2).write_volatile(0x80 | (cp & 0x3F) as u8);
        }
        3
    } else {
        unsafe {
            out.as_mut_ptr().write_volatile(0xF0 | (cp >> 18) as u8);
            out.as_mut_ptr().add(1).write_volatile(0x80 | ((cp >> 12) & 0x3F) as u8);
            out.as_mut_ptr().add(2).write_volatile(0x80 | ((cp >> 6) & 0x3F) as u8);
            out.as_mut_ptr().add(3).write_volatile(0x80 | (cp & 0x3F) as u8);
        }
        4
    }
}

#[no_mangle]
pub extern "C" fn mbsnrtowcs(
    dst: *mut u32,
    src: *mut *const c_char,
    nmc: SizeT,
    len: SizeT,
    _ps: *mut c_void,
) -> SizeT {
    if src.is_null() || unsafe { *src }.is_null() {
        return 0;
    }
    let mut s = unsafe { *src } as *const u8;
    let mut count: SizeT = 0;
    let mut off: SizeT = 0;
    while off < nmc {
        let remain = unsafe { core::slice::from_raw_parts(s.add(off), nmc - off) };
        match utf8_dec(remain) {
            None => {
                unsafe { *src = s.add(off) as *const c_char };
                return usize::MAX;
            }
            Some((n, cp)) => {
                if !dst.is_null() {
                    if count == len {
                        unsafe { *src = s.add(off) as *const c_char };
                        return count;
                    }
                    unsafe { *dst.add(count) = cp };
                }
                count += 1;
                off += n;
                if cp == 0 {
                    unsafe { *src = core::ptr::null() };
                    return count - 1;
                }
            }
        }
    }
    unsafe { *src = s.add(off) as *const c_char };
    count
}

#[no_mangle]
pub extern "C" fn wcsnrtombs(
    dst: *mut c_char,
    src: *mut *const u32,
    nwc: SizeT,
    len: SizeT,
    _ps: *mut c_void,
) -> SizeT {
    if src.is_null() || unsafe { *src }.is_null() {
        return 0;
    }
    let ws = unsafe { *src };
    let mut used: SizeT = 0;
    let mut tmp = [0u8; 4];
    for i in 0..nwc {
        let cp = unsafe { *ws.add(i) };
        if cp > 0x10_0000 || (0xD800..=0xDFFF).contains(&cp) {
            unsafe { *src = ws.add(i) };
            return usize::MAX;
        }
        let n = utf8_enc(cp, &mut tmp);
        if !dst.is_null() {
            if used + n > len {
                unsafe { *src = ws.add(i) };
                return used;
            }
            // 定长 volatile 展开：杜绝 LLVM 生成 memcpy 调用（零依赖要求）
            let d = dst as *mut u8;
            unsafe {
                if n >= 1 { d.add(used).write_volatile(tmp[0]); }
                if n >= 2 { d.add(used + 1).write_volatile(tmp[1]); }
                if n >= 3 { d.add(used + 2).write_volatile(tmp[2]); }
                if n >= 4 { d.add(used + 3).write_volatile(tmp[3]); }
            }
        }
        used += n;
        if cp == 0 {
            unsafe { *src = core::ptr::null() };
            return used - 1;
        }
    }
    unsafe { *src = ws.add(nwc) };
    used
}

#[panic_handler]
fn panic(_: &core::panic::PanicInfo) -> ! {
    loop {}
}
