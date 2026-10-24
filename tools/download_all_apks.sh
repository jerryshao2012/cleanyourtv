#!/usr/bin/env bash
# ==============================================================================
# download_all_apks.sh - Download all APKs from xiaomihezi.ysupan.com
# Saved to apks/downloads/<category>/
# ==============================================================================
set -euo pipefail

SCRIPT_PATH="$(python3 -c "import os, sys; print(os.path.realpath(sys.argv[1]))" "${BASH_SOURCE[0]}")"
SCRIPT_DIR="$(dirname "$SCRIPT_PATH")"
ROOT_DIR="$(cd "${SCRIPT_DIR}/../.." && pwd)"

exec python3 "${SCRIPT_DIR}/download_all_apks.py" "$@"
