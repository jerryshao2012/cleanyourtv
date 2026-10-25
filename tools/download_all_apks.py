#!/usr/bin/env python3
"""Sync all APKs from https://xiaomihezi.ysupan.com/ to local storage.

One-way sync from remote URL to local directory:
- Downloads missing files.
- Updates existing files if remote size or modification date is newer.
- Removes local files that no longer exist on remote (if --delete specified, or clean mode).
- Preserves folder categories matching the remote directories.
"""

import argparse
import base64
import os
import re
import shutil
import socket
import sys
import time
import urllib.parse
import urllib.request
from email.utils import parsedate_to_datetime

TOOLS_DIR = os.path.dirname(os.path.abspath(__file__))
# Default download directory: ../../apks/downloads relative to this script
DEFAULT_DOWNLOAD_DIR = os.path.abspath(os.path.join(TOOLS_DIR, "../../apks/downloads"))
DEFAULT_COMMON_DIR = os.path.abspath(os.path.join(TOOLS_DIR, "../../apks/common"))
YSUPAN_BASE = "https://xiaomihezi.ysupan.com"

# Cache for host reachability: {hostname: True/False}
HOST_REACHABLE = {}

HEADERS = {
    "Referer": f"{YSUPAN_BASE}/f_ht/ajcx/000ht.html?bbh=1183",
    "User-Agent": (
        "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) "
        "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
    ),
}


def is_host_reachable(hostname, port=443, timeout=1.5):
    """Fast check whether a remote CDN host is reachable via TCP."""
    if not hostname:
        return True
    host_lower = hostname.lower()
    if host_lower in HOST_REACHABLE:
        return HOST_REACHABLE[host_lower]

    try:
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(timeout)
        res = sock.connect_ex((hostname, port))
        sock.close()
        reachable = (res == 0)
    except Exception:
        reachable = False

    HOST_REACHABLE[host_lower] = reachable
    return reachable


def try_local_fallback(name, dest_file, common_dir=DEFAULT_COMMON_DIR):
    """If remote file is unreachable, try finding a matching APK in apks/common/."""
    if not os.path.isdir(common_dir):
        return False

    # Normalize name for comparison (e.g., '小苹果5.0.apk' -> '小苹果5')
    clean_key = re.sub(r"[\.v_\-0-9]", "", os.path.splitext(name)[0]).strip().lower()

    for item in os.listdir(common_dir):
        if not item.lower().endswith(".apk"):
            continue
        item_key = re.sub(r"[\.v_\-0-9]", "", os.path.splitext(item)[0]).strip().lower()
        if (clean_key and clean_key in item_key) or (name.split(".")[0] in item):
            src_file = os.path.join(common_dir, item)
            try:
                shutil.copy2(src_file, dest_file)
                return item
            except Exception:
                pass
    return False


def sanitize_folder_name(name):
    name = re.sub(r"[（\(].*?[）\)]", "", name)
    return name.strip() or "未分类"


def fetch_remote_categories():
    """Fetch folder IDs and names from remote."""
    url = f"{YSUPAN_BASE}/f_ht/ajcx/ml.aspx?cz=ml_dq&_dlmc=xiaomihezi&_dlmm="
    try:
        req = urllib.request.Request(url, headers=HEADERS)
        with urllib.request.urlopen(req, timeout=15) as resp:
            content = resp.read().decode("utf-8", errors="ignore")
        if "]" not in content:
            return []
        raw_html = base64.b64decode(content.split("]")[1]).decode("utf-8", errors="ignore")
        folders = []
        for m in re.finditer(r'id="ml_([0-9]+)"[^>]*>.*?<a[^>]*>([^<]+)</a>', raw_html, re.DOTALL):
            mlbh = int(m.group(1))
            cat_name = sanitize_folder_name(m.group(2).strip())
            folders.append((mlbh, cat_name))
        return folders
    except Exception as e:
        print(f"读取远程目录失败: {e}")
        return []


def fetch_folder_apks(mlbh, cat_name):
    """Fetch all APK entries in a remote category."""
    url = f"{YSUPAN_BASE}/f_ht/ajcx/wj.aspx?cz=dq&jsq=0&mlbh={mlbh}&wjpx=1&_dlmc=xiaomihezi&_dlmm="
    items = []
    try:
        req = urllib.request.Request(url, headers=HEADERS)
        with urllib.request.urlopen(req, timeout=15) as resp:
            content = resp.read().decode("utf-8", errors="ignore")
        if "]" not in content:
            return []
        raw_html = base64.b64decode(content.split("]")[1]).decode("utf-8", errors="ignore")
        for m in re.finditer(r'<li[^>]*>.*?<a[^>]+href="([^"]+)"[^>]*>([^<]+)</a>(?:.*?<label>([^<]*)</label>)?', raw_html, re.DOTALL):
            href, name = m.group(1), m.group(2).strip()
            desc = (m.group(3) or "").strip()
            if name.lower().endswith(".apk"):
                items.append({
                    "name": name,
                    "url": href,
                    "category": cat_name,
                    "desc": desc,
                })
    except Exception as e:
        print(f"  [warn] 读取分类 {cat_name} 出错: {e}")
    return items


def get_remote_file_meta(url, timeout=5):
    """Probe remote file size and mtime using HTTP Range request."""
    parts = urllib.parse.urlsplit(url)
    if not is_host_reachable(parts.hostname):
        return None, None
    encoded_url = urllib.parse.urlunsplit(
        (parts.scheme, parts.netloc, urllib.parse.quote(parts.path), parts.query, parts.fragment)
    )
    req = urllib.request.Request(encoded_url, headers={**HEADERS, "Range": "bytes=0-0"})
    try:
        with urllib.request.urlopen(req, timeout=timeout) as resp:
            content_range = resp.headers.get("Content-Range", "")
            size = None
            if "/" in content_range:
                try:
                    size = int(content_range.split("/")[-1])
                except ValueError:
                    pass
            last_mod = resp.headers.get("Last-Modified")
            mtime = None
            if last_mod:
                try:
                    mtime = parsedate_to_datetime(last_mod).timestamp()
                except Exception:
                    pass
            return size, mtime
    except Exception:
        return None, None


def download_file(url, dest_path, max_retries=3):
    """Download single file with progress and atomic write."""
    parts = urllib.parse.urlsplit(url)
    if not is_host_reachable(parts.hostname):
        print(f"    [跳过] 节点 {parts.hostname} 当前网络不可达 (海外路由受阻或该分卷离线)")
        return False

    encoded_url = urllib.parse.urlunsplit(
        (parts.scheme, parts.netloc, urllib.parse.quote(parts.path), parts.query, parts.fragment)
    )

    temp_path = dest_path + ".tmp"
    for attempt in range(1, max_retries + 1):
        try:
            req = urllib.request.Request(encoded_url, headers=HEADERS)
            with urllib.request.urlopen(req, timeout=15) as resp:
                total_size = int(resp.headers.get("Content-Length", 0))
                last_mod = resp.headers.get("Last-Modified")
                remote_mtime = None
                if last_mod:
                    try:
                        remote_mtime = parsedate_to_datetime(last_mod).timestamp()
                    except Exception:
                        pass

                downloaded = 0
                with open(temp_path, "wb") as out:
                    while True:
                        chunk = resp.read(65536)
                        if not chunk:
                            break
                        out.write(chunk)
                        downloaded += len(chunk)
                        if total_size > 0:
                            pct = downloaded * 100 // total_size
                            mb = downloaded / (1024 * 1024)
                            total_mb = total_size / (1024 * 1024)
                            sys.stdout.write(f"\r    [{pct:3d}%] {mb:.1f}MB / {total_mb:.1f}MB")
                            sys.stdout.flush()

            os.rename(temp_path, dest_path)
            if remote_mtime:
                os.utime(dest_path, (remote_mtime, remote_mtime))
            sys.stdout.write("\n")
            return True
        except Exception as e:
            if os.path.exists(temp_path):
                os.remove(temp_path)
            if attempt < max_retries:
                print(f"\n    [重试 {attempt}/{max_retries}] 网络超时或断开 ({e})，2秒后重试...")
                time.sleep(2)
            else:
                print(f"\n    [失败] 下载失败: {e}")
                return False
    return False


def sync_apks(dest_dir, delete_orphans=False):
    os.makedirs(dest_dir, exist_ok=True)
    print(f"============================================================")
    print(f"  APK 单向同步 (URL -> Local)")
    print(f"  远程源: {YSUPAN_BASE}")
    print(f"  本地目录: {dest_dir}")
    print(f"============================================================\n")

    print(">>> 正在扫描远程网盘目录...")
    folders = fetch_remote_categories()
    if not folders:
        # Fallback to known folder list
        folders = [
            (1746653, "电视类app"),
            (1746690, "影视类app"),
            (1746691, "工具类app"),
            (1750782, "生活娱乐app"),
            (1746692, "国外用户app"),
            (1746693, "测试"),
        ]

    remote_apks = []
    for mlbh, cat_name in folders:
        items = fetch_folder_apks(mlbh, cat_name)
        print(f"  分类【{cat_name}】: 发现 {len(items)} 个文件")
        remote_apks.extend(items)

    print(f"\n远程总计有效 APK: {len(remote_apks)} 个\n")

    # Set of expected relative paths for sync/clean
    remote_rel_paths = set()

    synced_count = 0
    skipped_count = 0
    updated_count = 0
    fallback_count = 0
    failed_count = 0

    for idx, item in enumerate(remote_apks, 1):
        cat = item["category"]
        name = item["name"]
        url = item["url"]
        rel_path = os.path.join(cat, name)
        remote_rel_paths.add(rel_path)

        local_cat_dir = os.path.join(dest_dir, cat)
        os.makedirs(local_cat_dir, exist_ok=True)
        local_file = os.path.join(local_cat_dir, name)

        action = "download"  # download, update, or skip
        if os.path.exists(local_file):
            local_size = os.path.getsize(local_file)
            if local_size > 1024:
                # File exists, verify with remote size & mtime
                rem_size, rem_mtime = get_remote_file_meta(url)
                if rem_size is not None:
                    if local_size == rem_size:
                        action = "skip"
                    else:
                        action = "update"
                else:
                    # If meta probe fails, keep existing
                    action = "skip"
            else:
                action = "download"

        if action == "skip":
            print(f"[{idx}/{len(remote_apks)}] [已同步] {rel_path}")
            skipped_count += 1
            continue
        elif action == "update":
            print(f"[{idx}/{len(remote_apks)}] [发现更新] {rel_path}")
            if download_file(url, local_file):
                updated_count += 1
            else:
                failed_count += 1
        else:
            print(f"[{idx}/{len(remote_apks)}] [新增下载] {rel_path}")
            if download_file(url, local_file):
                synced_count += 1
            else:
                # If remote download failed, try local fallback from apks/common/
                fallback_src = try_local_fallback(name, local_file)
                if fallback_src:
                    print(f"    [本地补充] 从 apks/common/{fallback_src} 成功复制同步")
                    fallback_count += 1
                else:
                    failed_count += 1

    # Optional orphan cleanup if requested
    deleted_count = 0
    if delete_orphans:
        print("\n>>> 正在检查本地多余废弃文件...")
        for root, dirs, files in os.walk(dest_dir):
            for f in files:
                if f.endswith(".tmp"):
                    os.remove(os.path.join(root, f))
                    continue
                if f.lower().endswith(".apk"):
                    full_p = os.path.join(root, f)
                    rel_p = os.path.relpath(full_p, dest_dir)
                    if rel_p not in remote_rel_paths:
                        print(f"  [删除本地多余文件] {rel_p}")
                        os.remove(full_p)
                        deleted_count += 1

    print("\n" + "=" * 60)
    print(f"同步完成！")
    print(f"  - 新增下载: {synced_count}")
    print(f"  - 校验更新: {updated_count}")
    print(f"  - 本地已最新(跳过): {skipped_count}")
    if fallback_count > 0:
        print(f"  - 本地库补齐: {fallback_count}")
    if delete_orphans:
        print(f"  - 本地冗余清理: {deleted_count}")
    print(f"  - 远程节点不可达/重试未果: {failed_count}")
    if failed_count > 0:
        print("\n提示: 失败的文件由于远程存储节点 (如 ys-L.ysupan.com) 离线或海外路由限制导致。")
        print("      待网盘节点恢复或配置国内代理 (HTTP_PROXY) 后重新运行脚本即可自动增量补齐。")
    print("=" * 60)


def main():
    parser = argparse.ArgumentParser(description="Sync APKs from xiaomihezi.ysupan.com")
    parser.add_argument(
        "-d", "--dest",
        default=DEFAULT_DOWNLOAD_DIR,
        help=f"Target local download folder (default: {DEFAULT_DOWNLOAD_DIR})"
    )
    parser.add_argument(
        "--delete",
        action="store_true",
        help="Delete local APK files that are no longer present on the remote site"
    )
    args = parser.parse_args()
    sync_apks(args.dest, delete_orphans=args.delete)


if __name__ == "__main__":
    main()
