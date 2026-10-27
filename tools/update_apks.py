#!/usr/bin/env python3
"""Check and update third-party APKs from https://xiaomihezi.ysupan.com/.

Fetches the repository directory, compares package versions against local
apks/common/, downloads newer versions, and updates README.md and usb-pack.
"""

import base64
import glob
import json
import os
import re
import shutil
import subprocess
import sys
import urllib.parse
import urllib.request

TOOLS_DIR = os.path.dirname(os.path.abspath(__file__))
ROOT_DIR = os.path.abspath(os.path.join(TOOLS_DIR, "../.."))
APKS_DIR = os.path.join(ROOT_DIR, "apks", "common")
USB_PACK_DIR = os.path.join(ROOT_DIR, "devices", "xiaomi-mibox3", "usb-pack")
README_MD = os.path.join(ROOT_DIR, "README.md")
MIBOX_MD = os.path.join(ROOT_DIR, "devices", "xiaomi-mibox3", "README.md")
INSTALL_SCRIPT = os.path.join(ROOT_DIR, "install-common-apks.sh")

YSUPAN_BASE = "https://xiaomihezi.ysupan.com"
YSUPAN_FOLDERS = [
    (1746653, "电视类app"),
    (1746690, "影视类app"),
    (1746691, "工具类app"),
    (1750782, "生活娱乐app"),
    (1746692, "国外用户app"),
]

HEADERS = {
    "Referer": f"{YSUPAN_BASE}/f_ht/ajcx/000ht.html?bbh=1183",
    "User-Agent": (
        "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) "
        "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
    ),
}


def find_aapt():
    for candidate in [
        shutil.which("aapt"),
        shutil.which("aapt2"),
        "/opt/homebrew/share/android-commandlinetools/build-tools/34.0.0/aapt",
        "/opt/homebrew/share/android-commandlinetools/build-tools/33.0.0/aapt",
        os.path.expanduser("~/Library/Android/sdk/build-tools/34.0.0/aapt"),
        os.path.expanduser("~/Library/Android/sdk/build-tools/33.0.0/aapt"),
    ]:
        if candidate and os.path.isfile(candidate) and os.access(candidate, os.X_OK):
            return candidate
    return None


AAPT_BIN = find_aapt()


def get_apk_badging(apk_path):
    """Return (pkg_name, version_code, version_name) or (None, None, None)."""
    if not AAPT_BIN or not os.path.exists(apk_path):
        return None, None, None
    try:
        res = subprocess.run(
            [AAPT_BIN, "dump", "badging", apk_path],
            capture_output=True,
            text=True,
            timeout=15,
        )
        pkg, code, vname = None, None, None
        for line in res.stdout.splitlines():
            if line.startswith("package:"):
                for part in line.split():
                    if part.startswith("name="):
                        pkg = part.split("=")[1].strip("'\"")
                    elif part.startswith("versionCode="):
                        try:
                            code = int(part.split("=")[1].strip("'\""))
                        except ValueError:
                            pass
                    elif part.startswith("versionName="):
                        vname = part.split("=")[1].strip("'\"")
                break
        return pkg, code, vname
    except Exception as e:
        print(f"  [warn] aapt dump failed for {os.path.basename(apk_path)}: {e}")
        return None, None, None


def fetch_ysupan_catalog():
    """Scrapes all APK download links from ysupan."""
    print("Fetching catalog from xiaomihezi.ysupan.com...")
    catalog = {}
    for mlbh, cat_name in YSUPAN_FOLDERS:
        url = (
            f"{YSUPAN_BASE}/f_ht/ajcx/wj.aspx?cz=dq&jsq=0&mlbh={mlbh}"
            f"&wjpx=1&_dlmc=xiaomihezi&_dlmm="
        )
        try:
            req = urllib.request.Request(url, headers=HEADERS)
            with urllib.request.urlopen(req, timeout=15) as resp:
                content = resp.read().decode("utf-8", errors="ignore")
            if "]" not in content:
                continue
            raw_html = base64.b64decode(content.split("]")[1]).decode("utf-8", errors="ignore")
            for m in re.finditer(
                r'<li[^>]*>.*?<a[^>]+href="([^"]+)"[^>]*>([^<]+)</a>(?:.*?<label>([^<]*)</label>)?',
                raw_html,
                re.DOTALL,
            ):
                href, name = m.group(1), m.group(2).strip()
                desc = (m.group(3) or "").strip()
                if name.endswith(".apk"):
                    catalog[name] = {"url": href, "desc": desc, "category": cat_name}
        except Exception as e:
            print(f"  [warn] Error fetching folder {cat_name} ({mlbh}): {e}")
    print(f"Discovered {len(catalog)} APKs on ysupan.")
    return catalog


def download_apk(url, dest_path):
    """Downloads APK handling percent-encoding and headers."""
    parts = urllib.parse.urlsplit(url)
    encoded_url = urllib.parse.urlunsplit(
        (parts.scheme, parts.netloc, urllib.parse.quote(parts.path), parts.query, parts.fragment)
    )
    req = urllib.request.Request(encoded_url, headers=HEADERS)
    with urllib.request.urlopen(req, timeout=8) as resp, open(dest_path, "wb") as out:
        while True:
            chunk = resp.read(65536)
            if not chunk:
                break
            out.write(chunk)


def update_docs_refs(old_name, new_name):
    """Update all occurrences of old APK filename to new filename across project docs and scripts."""
    for doc in [README_MD, MIBOX_MD, INSTALL_SCRIPT]:
        if not os.path.exists(doc):
            continue
        with open(doc, "r", encoding="utf-8") as f:
            content = f.read()
        if old_name in content:
            content = content.replace(old_name, new_name)
            with open(doc, "w", encoding="utf-8") as f:
                f.write(content)
            print(f"Updated references from {old_name} to {new_name} in {os.path.basename(doc)}")


def main():
    if not AAPT_BIN:
        print("ERROR: aapt binary not found. Please install Android build-tools.")
        sys.exit(1)

    catalog = fetch_ysupan_catalog()
    if not catalog:
        print("Could not retrieve remote catalog. Check network connection.")
        sys.exit(1)

    # Target apps specification:
    # (local_prefix, candidate_remote_keys, display_name)
    # The script looks for local files named <local_prefix>_v<version>.apk
    # and matches against possible naming variations on ysupan网盘.
    TARGET_APPS = [
        ("千寻", ["千寻.apk", "千寻电视.apk"], "千寻电视"),
        ("独播库TV", ["独播库TV.apk", "独播库.apk"], "独播库 TV"),
        ("剧迷TV", ["剧迷TV4.0.apk", "剧迷TV.apk", "剧迷.apk"], "剧迷 TV"),
        ("爱壹帆", ["爱壹帆v2.4.5.apk", "爱壹帆.apk", "爱一帆.apk"], "爱壹帆"),
        ("多米直播", ["多米直播.apk"], "多米直播"),
        ("乐播投屏TV版", ["乐播投屏.apk", "乐播投屏TV版.apk"], "乐播投屏 TV 版"),
        ("最新更多下载", ["最新更多下载.apk"], "最新更多下载"),
    ]

    local_files = [f for f in glob.glob(os.path.join(APKS_DIR, "*.apk")) if not os.path.basename(f).startswith("Updated")]
    os.makedirs("/tmp/cleantv_check_apks", exist_ok=True)

    print("\nChecking local APK versions against remote (ysupan.com):")
    print("-" * 75)

    updated_count = 0

    for prefix, remote_candidates, display_name in TARGET_APPS:
        # Find which remote candidate exists in catalog
        remote_key = next((k for k in remote_candidates if k in catalog), None)
        if not remote_key:
            continue

        # Find matching local file (strictly matching prefix + '_v')
        matched_local = [
            f for f in local_files
            if os.path.basename(f) == f"{prefix}.apk" or os.path.basename(f).startswith(f"{prefix}_v")
        ]
        if not matched_local:
            continue
        local_apk = matched_local[0]
        local_base = os.path.basename(local_apk)

        local_pkg, local_code, local_vname = get_apk_badging(local_apk)
        if not local_pkg:
            print(f"Skipping {local_base} (unable to read badging)")
            continue

        remote_info = catalog[remote_key]
        temp_dest = os.path.join("/tmp/cleantv_check_apks", remote_key)

        print(f"Checking {display_name} (Local: {local_base}, code={local_code or '?'})...")
        try:
            download_apk(remote_info["url"], temp_dest)
            rem_pkg, rem_code, rem_vname = get_apk_badging(temp_dest)
            if not rem_code:
                print(f"  [warn] Could not parse downloaded remote APK for {remote_key}")
                continue

            if local_code and rem_code > local_code:
                print(
                    f"  🔥 NEW VERSION FOUND for {display_name}: {local_vname} (code {local_code}) "
                    f"-> {rem_vname} (code {rem_code})"
                )
                # Form unified new filename: <Prefix>_v<Version>.apk
                new_base = f"{prefix}_v{rem_vname}.apk" if rem_vname else f"{prefix}.apk"
                new_dest = os.path.join(APKS_DIR, new_base)
                shutil.copy2(temp_dest, new_dest)
                if new_dest != local_apk:
                    os.remove(local_apk)
                print(f"  Installed {new_base} to apks/common/")

                # Also update usb-pack if present
                for usb_f in glob.glob(os.path.join(USB_PACK_DIR, f"*{prefix}*.apk")):
                    usb_name = os.path.basename(usb_f)
                    # Replace version part in usb_name: NN_Prefix_vX.Y.apk
                    m = re.match(r"^([0-9]{2}_[^_]+)(?:_v?[0-9.]+)?(\.apk)$", usb_name)
                    if m:
                        new_usb_name = f"{m.group(1)}_v{rem_vname}{m.group(2)}"
                    else:
                        new_usb_name = usb_name
                    new_usb_dest = os.path.join(USB_PACK_DIR, new_usb_name)
                    shutil.copy2(temp_dest, new_usb_dest)
                    if new_usb_dest != usb_f:
                        os.remove(usb_f)
                    update_docs_refs(usb_name, new_usb_name)
                    print(f"  Updated usb-pack: {usb_name} -> {new_usb_name}")

                # Update documentation
                update_docs_refs(local_base, new_base)
                updated_count += 1
            else:
                print(f"  Up-to-date (Local: code {local_code} >= Remote: code {rem_code})")
        except Exception as e:
            print(f"  [error] Failed checking {remote_key}: {e}")

    print("-" * 75)
    if updated_count == 0:
        print("All target APKs are up to date.")
    else:
        print(f"Successfully updated {updated_count} APK(s) and documents.")


if __name__ == "__main__":
    main()
