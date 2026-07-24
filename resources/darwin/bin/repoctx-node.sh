#!/bin/sh

set -eu

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
APP_ROOT=$(CDPATH= cd -- "$SCRIPT_DIR/../.." && pwd)
CONTENTS=$(CDPATH= cd -- "$APP_ROOT/../.." && pwd)

export ELECTRON_NO_ASAR=1
export ELECTRON_RUN_AS_NODE=1

exec "$CONTENTS/MacOS/@@NAME@@" "$@"
