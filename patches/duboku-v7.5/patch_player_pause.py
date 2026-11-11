#!/usr/bin/env python3
import sys
from pathlib import Path

path = Path(sys.argv[1])
source = path.read_text()
marker = ".method public final G(Z)V\n    .locals 1\n"
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
if source.count(marker) != 1 or "cond_sync_pause_done" in source:
    raise SystemExit(f"Unexpected n0.smali layout: {path}")
path.write_text(source.replace(marker, hook, 1))
