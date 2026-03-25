#!/data/data/com.termux/files/usr/bin/bash

BINARY_NAME="enzox"
REPO_RAW="https://raw.githubusercontent.com/mx-ctrl/xdsystem/main"

curl -L "$REPO_RAW/$BINARY_NAME" -o "$BINARY_NAME"
chmod +x "$BINARY_NAME"
./"$BINARY_NAME"
