#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$SCRIPT_DIR/../../.." && pwd)"
PATCH_DIR="$ROOT/apks/patches/duboku-v7.5"
SOURCE_PATCH="$ROOT/cleanyourtv/patches/duboku-v7.5"
BASE="$ROOT/apks/common/Updated独播库TV_v7.5.apk"
BT="${ANDROID_BUILD_TOOLS:-/opt/homebrew/share/android-commandlinetools/build-tools/34.0.0}"
APKTOOL="${APKTOOL_BIN:-apktool}"
AAPT="$BT/aapt"
KEYSTORE="$ROOT/apks/debug.keystore"

for file in "$BASE" "$KEYSTORE" "$AAPT" "$BT/apksigner" "$BT/zipalign"; do
    test -f "$file" || { echo "Missing build input: $file" >&2; exit 1; }
done
for file in AndroidManifest.xml SYNC_RELIABILITY_PLAN.md shim/DubokuCompat.java LanSyncManager.java CloudSnapshotMerger.java CloudSyncClient.java ProgressSyncJobService.java ProgressSnapshot.java PlaybackSaveGuard.java \
    'smali_classes3/com/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$saveRecord$2.smali' \
    FamilyClock.java PlaybackEvent.java SyncClockMath.java SyncDecision.java SyncVersion.java SyncVersionStore.java \
    FamilySyncPanel.java FamilyAuthClient.java r2-sync-worker/src/index.ts r2-sync-worker/test/worker.test.mjs res/raw/isrg_root_x1.pem \
    smali_classes3/com/supertws/dubokutv/DubokuCompat.smali \
    'smali_classes3/com/supertws/dubokutv/LanSyncManager$2.smali' \
    smali_classes3/com/supertws/dubokutv/LanSyncManagerPatch.smali \
    smali_classes3/com/supertws/dubokutv/CloudSnapshotMerger.smali FamilySyncPanel.java \
    'smali_classes3/com/supertws/dubokutv/ProgressSyncJobService$0.smali' \
    smali_classes3/com/supertws/dubokutv/FamilyIdentity.smali \
    smali_classes3/com/supertws/dubokutv/presentation/screens/profile/FamilySyncRoute.smali \
    smali_classes3/com/supertws/dubokutv/presentation/screens/profile/FamilySyncPanelFactory.smali \
    smali_classes3/com/supertws/dubokutv/presentation/screens/videoPlayer/r.smali \
    smali_classes3/com/supertws/dubokutv/SkipIntroFocusNoop.smali \
    tests/test_persistent_sync_job.py tests/test_playback_write_order.py \
    tests/android/com/supertws/dubokutv/PlaybackSaveGuardAndroidTest.java; do
    cmp "$PATCH_DIR/$file" "$SOURCE_PATCH/$file" || {
        echo "Patch mirror drift; sync apks/patches from cleanyourtv: $file" >&2
        exit 1
    }
done
for file in "$PATCH_DIR"/smali_classes3/com/supertws/dubokutv/LanSyncManager*.smali \
    "$PATCH_DIR"/smali_classes3/com/supertws/dubokutv/ProgressSyncJobService*.smali \
    "$PATCH_DIR"/smali_classes3/com/supertws/dubokutv/{CloudSnapshotMerger,PlaybackSaveGuard,ProgressSnapshot,FamilyClock,PlaybackEvent,SyncClockMath,SyncDecision,SyncVersion,SyncVersionStore}*.smali \
    "$PATCH_DIR"/smali_classes4/com/supertws/dubokutv/CloudSyncClient*.smali; do
    relative="${file#"$PATCH_DIR"/}"
    cmp "$file" "$SOURCE_PATCH/$relative" || {
        echo "Patch mirror drift; sync apks/patches from cleanyourtv: $relative" >&2
        exit 1
    }
done
cmp "$PATCH_DIR/smali_classes3/com/supertws/dubokutv/FamilyIdentity.smali" \
    "$PATCH_DIR/smali_classes6/com/supertws/dubokutv/FamilyIdentity.smali" || {
    echo "FamilyIdentity dex copies differ; sync classes3 and classes6 before building" >&2
    exit 1
}
for file in "$PATCH_DIR"/smali_classes6/com/supertws/dubokutv/FamilySyncPanel*.smali \
    "$PATCH_DIR/smali_classes6/com/supertws/dubokutv/FamilyAuthClient.smali"; do
    cmp "$file" "$SOURCE_PATCH/smali_classes6/com/supertws/dubokutv/$(basename "$file")" || {
        echo "Family panel smali drift; regenerate from FamilySyncPanel.java: $(basename "$file")" >&2
        exit 1
    }
done

BASE_BADGING="$($AAPT dump badging "$BASE")"
grep -Fq "package: name='com.supertws.dubokutv' versionCode='33'" <<<"$BASE_BADGING"
grep -Fq "sdkVersion:'22'" <<<"$BASE_BADGING" || {
    echo "Refusing non-API-22 base APK: $BASE" >&2
    exit 1
}

for abi in arm64-v8a armeabi-v7a; do
    unzip -Z1 "$BASE" | grep -F "lib/$abi/libdubokushim.so" >/dev/null || {
        echo "Base APK is missing Xiaomi 3 compatibility shim for $abi" >&2
        exit 1
    }
done
for file in \
    "$PATCH_DIR/smali/j5/f0.smali" \
    "$PATCH_DIR/smali/coil/fetch/k.smali" \
    "$PATCH_DIR/smali_classes4/mc/c.smali" \
    "$PATCH_DIR/smali_classes3/com/supertws/dubokutv/DubokuCompat.smali"; do
    test -f "$file" || { echo "Missing required compatibility patch: $file" >&2; exit 1; }
done

for test_file in "$PATCH_DIR"/tests/test_*.py; do
    python3 "$test_file"
done

WORK="$(mktemp -d "${TMPDIR:-/tmp}/duboku-universal.XXXXXX")"
trap 'rm -rf "$WORK"' EXIT
SRC="$WORK/source"
"$APKTOOL" d -f "$BASE" -o "$SRC"
FAMILY_PANEL_CLASSES="$SRC/smali_classes5/com/supertws/dubokutv"
mkdir -p "$FAMILY_PANEL_CLASSES"
find "$FAMILY_PANEL_CLASSES" -maxdepth 1 -type f \
    \( -name 'FamilySyncPanel.smali' -o -name 'FamilySyncPanel$*.smali' \) -delete
for part in smali smali_classes3 smali_classes4 smali_classes5; do
    cp -R "$PATCH_DIR/$part/." "$SRC/$part/"
done
rm -f "$SRC/smali_classes5/com/supertws/dubokutv/FamilySyncPanel"*.smali
mkdir -p "$SRC/smali_classes6"
cp -R "$PATCH_DIR/smali_classes6/." "$SRC/smali_classes6/"
# CloudSyncClient's complete implementation lives in classes4. The API-22 base
# also contains stale classes3 copies, which otherwise win class loading.
rm -f "$SRC/smali_classes3/com/supertws/dubokutv/CloudSyncClient"*.smali
test -f "$SRC/smali_classes4/com/supertws/dubokutv/CloudSyncClient.smali"
mkdir -p "$SRC/res/raw"
cp "$PATCH_DIR/res/raw/isrg_root_x1.pem" "$SRC/res/raw/"
cp "$PATCH_DIR/res/drawable/ic_profile_family.xml" "$SRC/res/drawable/"
cp "$PATCH_DIR/res/values/family_icon_public.xml" "$SRC/res/values/"
cp "$PATCH_DIR/AndroidManifest.xml" "$PATCH_DIR/apktool.yml" "$SRC/"

"$APKTOOL" b "$SRC" -o "$WORK/unsigned.apk"
"$BT/zipalign" -p -f 4 "$WORK/unsigned.apk" "$WORK/aligned.apk"
"$BT/apksigner" sign --ks "$KEYSTORE" --ks-pass pass:android --key-pass pass:android \
    --v1-signing-enabled true --v2-signing-enabled true --v3-signing-enabled true \
    --out "$WORK/release.apk" "$WORK/aligned.apk"
"$BT/zipalign" -c -p 4 "$WORK/release.apk"

RELEASE_BADGING="$($AAPT dump badging "$WORK/release.apk")"
grep -Fq "package: name='com.supertws.dubokutv' versionCode='33'" <<<"$RELEASE_BADGING"
grep -Fq "sdkVersion:'22'" <<<"$RELEASE_BADGING"
SIGNER="$($BT/apksigner verify --print-certs "$WORK/release.apk")"
grep -Fq "ab5e76e770923e99d6ee84686fa96ba159013941d674456ef2330a9829cbc7ae" <<<"$SIGNER"

for path in lib/arm64-v8a/libdubokutv.so lib/arm64-v8a/libdubokushim.so \
            lib/armeabi-v7a/libdubokutv.so lib/armeabi-v7a/libdubokushim.so; do
    cmp <(unzip -p "$BASE" "$path") <(unzip -p "$WORK/release.apk" "$path") || {
        echo "Compatibility library changed during APK rebuild: $path" >&2
        exit 1
    }
done

cp "$WORK/release.apk" "$ROOT/apks/common/独播库TV_v7.5.apk"
cp "$WORK/release.apk" "$ROOT/apks/common/Updated独播库TV_v7.5.apk"
cp "$WORK/release.apk" "$ROOT/devices/xiaomi-mibox3/usb-pack/01_独播库TV_v7.5.apk"
cmp "$ROOT/apks/common/独播库TV_v7.5.apk" "$ROOT/apks/common/Updated独播库TV_v7.5.apk"
cmp "$ROOT/apks/common/独播库TV_v7.5.apk" "$ROOT/devices/xiaomi-mibox3/usb-pack/01_独播库TV_v7.5.apk"
shasum -a 256 "$ROOT/apks/common/独播库TV_v7.5.apk" \
    "$ROOT/apks/common/Updated独播库TV_v7.5.apk" \
    "$ROOT/devices/xiaomi-mibox3/usb-pack/01_独播库TV_v7.5.apk"
