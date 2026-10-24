#!/usr/bin/env bash
# ==============================================================================
# check_apks.sh - Check and update third-party APKs from xiaomihezi.ysupan.com
# ==============================================================================
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/../.." && pwd)"

# Run check & updater python script
exec python3 "${SCRIPT_DIR}/update_apks.py" "$@"
