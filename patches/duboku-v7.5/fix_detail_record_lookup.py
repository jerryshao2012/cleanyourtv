#!/usr/bin/env python3
"""Correct the MovieDetails fields used by the LAN sync record lookup."""
import sys
from pathlib import Path

path = Path(sys.argv[1]) / 'smali_classes3/com/supertws/dubokutv/LanSyncManager.smali'
source = path.read_text()
start = source.index('.method public static resolveLatestRecord(')
end = source.index('.end method', start)
method = source[start:end]
for old, new in (
    ('iget-object v5, v0, Lqa/p;->b:Ljava/lang/String;', 'iget-object v5, v0, Lqa/p;->f:Ljava/lang/String;'),
    ('iget-object v0, v0, Lqa/p;->a:Ljava/lang/String;', 'iget-object v0, v0, Lqa/p;->b:Ljava/lang/String;'),
):
    if method.count(old) != 1:
        raise ValueError(f'Expected exactly one occurrence: {old}')
    method = method.replace(old, new, 1)
path.write_text(source[:start] + method + source[end:])
