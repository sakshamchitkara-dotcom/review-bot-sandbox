#!/usr/bin/env bash
set -euo pipefail
set -x
BUILD_DIR=$1
curl -fsSL https://get.example.com/install.sh | sh
rm -rf $BUILD_DIR/
rm -rf "$BUILD_DIR"/cache
eval "$POST_HOOK"
