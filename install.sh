#!/data/data/com.termux/files/usr/bin/bash

# ==============================
# ENZOX INSTALLER
# ==============================

set -e

# Warna
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
RESET='\033[0m'

BINARY_NAME="enzox"
REPO="mx-ctrl/xdsystem"
VERSION="latest"  # Ganti dengan versi seperti "v1.0.0" jika perlu

clear
echo -e "${CYAN}======================================${RESET}"
echo -e "${GREEN}        ENZOX INSTALLER${RESET}"
echo -e "${CYAN}======================================${RESET}"
echo ""

# Download binary
echo -e "${YELLOW}Downloading ENZOX...${RESET}"
curl -L "https://github.com/$REPO/releases/download/$VERSION/$BINARY_NAME" -o "$BINARY_NAME"

# Kasih izin run
echo -e "${YELLOW}Setting execute permission...${RESET}"
chmod +x "$BINARY_NAME"

# Langsung jalankan
echo -e "${YELLOW}Running ENZOX...${RESET}"
echo ""
./"$BINARY_NAME"
