#!/usr/bin/env python3
import re
import sys
from pathlib import Path

path = Path(sys.argv[1])
source = path.read_text()
marker = ".method public final G(Z)V\n    .locals 1\n"
method_start = source.find(marker)
if method_start < 0 or source.find(marker, method_start + len(marker)) >= 0:
    raise SystemExit(f"Unexpected n0.smali layout: {path}")
method_end = source.find(".end method", method_start)
if method_end < 0:
    raise SystemExit(f"Unexpected n0.smali layout: {path}")
body_start = method_start + len(marker)
body = source[body_start:method_end]
hook_pattern = re.compile(
    r"(?ms)^    if-nez p1, (?P<done>:cond_[\w$]+)\n"
    r".*?^    iget-object v0, p0, [^\n]+->y:Landroidx/media3/exoplayer/ExoPlayer;\n"
    r".*?^    check-cast v0, Landroidx/media3/exoplayer/h0;\n"
    r".*?^    invoke-virtual \{v0\}, Landroidx/media3/exoplayer/h0;->S\(\)Z\n"
    r".*?^    move-result v0\n"
    r".*?^    if-nez v0, (?P=done)\n"
    r".*?^    const/4 v0, 0x0\n"
    r".*?^    invoke-static \{v0\}, Lcom/supertws/dubokutv/LanSyncManager;->onActivityPause\(Landroid/app/Activity;\)V\n"
    r"(?:(?:[ \t]*\n)*(?:    \.line \d+\n(?:[ \t]*\n)*)?    (?P=done)\n)?"
)
hook = """.method public final G(Z)V
    .locals 1
    if-nez p1, :cond_sync_pause_done
    iget-object v0, p0, Lcom/supertws/dubokutv/presentation/screens/videoPlayer/n0;->y:Landroidx/media3/exoplayer/ExoPlayer;
    check-cast v0, Landroidx/media3/exoplayer/h0;
    invoke-virtual {v0}, Landroidx/media3/exoplayer/h0;->S()Z
    move-result v0
    if-nez v0, :cond_sync_pause_done
    const/4 v0, 0x0
    invoke-static {v0}, Lcom/supertws/dubokutv/LanSyncManager;->onActivityPause(Landroid/app/Activity;)V
    :cond_sync_pause_done
"""
clean_body, removed = hook_pattern.subn("", body)
if removed == 0 and "LanSyncManager;->onActivityPause(Landroid/app/Activity;)V" in body:
    raise SystemExit(f"Unrecognized pause hook in n0.smali: {path}")
updated = source[:method_start] + hook + clean_body + source[method_end:]
path.write_text(updated)
