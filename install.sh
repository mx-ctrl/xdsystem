#!/data/data/com.termux/files/usr/bin/bash

# ==============================
# ENZOX INSTALLER
# ==============================

set -e

# Warna output
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
RESET='\033[0m'

INSTALL_DIR="$HOME/bin"
BINARY_NAME="enzox"

clear
echo -e "${CYAN}======================================${RESET}"
echo -e "${GREEN}        ENZOX INSTALLER${RESET}"
echo -e "${CYAN}======================================${RESET}"
echo ""

# Update & install package dasar
echo -e "${YELLOW}[1/5] Updating & installing packages...${RESET}"
pkg update -y >/dev/null 2>&1
pkg install -y golang curl file git >/dev/null 2>&1

# Storage permission
echo -e "${YELLOW}[2/5] Requesting storage permission...${RESET}"
termux-setup-storage >/dev/null 2>&1 || true
sleep 1

# Folder binary
echo -e "${YELLOW}[3/5] Preparing install directory...${RESET}"
mkdir -p "$INSTALL_DIR"

# Copy binary
echo -e "${YELLOW}[4/5] Installing binary...${RESET}"
if [ ! -f "$BINARY_NAME" ]; then
    echo -e "${RED}[!] Binary '$BINARY_NAME' not found in this folder.${RESET}"
    exit 1
fi

chmod +x "$BINARY_NAME"
cp "$BINARY_NAME" "$INSTALL_DIR/$BINARY_NAME"
chmod +x "$INSTALL_DIR/$BINARY_NAME"

# Set PATH (hanya ditambah jika belum ada)
echo -e "${YELLOW}[5/5] Setting PATH...${RESET}"
grep -qxF "export PATH=\"$INSTALL_DIR:\$PATH\"" "$HOME/.zshrc" 2>/dev/null || \
echo "export PATH=\"$INSTALL_DIR:\$PATH\"" >> "$HOME/.zshrc"

grep -qxF "export PATH=\"$INSTALL_DIR:\$PATH\"" "$HOME/.bashrc" 2>/dev/null || \
echo "export PATH=\"$INSTALL_DIR:\$PATH\"" >> "$HOME/.bashrc"

export PATH="$INSTALL_DIR:$PATH"

echo ""
echo -e "${GREEN}======================================${RESET}"
echo -e "${GREEN}      INSTALL COMPLETED${RESET}"
echo -e "${GREEN}======================================${RESET}"
echo ""
echo -e "Run binary with:"
echo -e "  ${CYAN}$BINARY_NAME${RESET}"
echo ""
echo -e "If command not found, reload shell:"
echo -e "  source ~/.zshrc"
echo ""
