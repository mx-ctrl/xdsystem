#!/data/data/com.termux/files/usr/bin/bash

# ==============================
# ENZOX INSTALLER
# ==============================

# Warna
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
RESET='\033[0m'

BINARY_NAME="enzox"
REPO="mx-ctrl/xdsystem"
VERSION="latest"

clear
echo -e "${CYAN}======================================${RESET}"
echo -e "${GREEN}        ENZOX INSTALLER${RESET}"
echo -e "${CYAN}======================================${RESET}"
echo ""

# Hentikan proses lama jika jalan
pkill "$BINARY_NAME" 2>/dev/null || true

# Hapus file lama
rm -f "$BINARY_NAME"

# Download binary dari GitHub Releases
echo -e "${YELLOW}Downloading ENZOX binary...${RESET}"
curl -L "https://github.com/$REPO/releases/download/$VERSION/$BINARY_NAME" -o "$BINARY_NAME"

if [ $? -ne 0 ] || [ ! -f "$BINARY_NAME" ]; then
    echo -e "${RED}[!] Gagal download binary${RESET}"
    exit 1
fi

echo -e "${GREEN}✓ Download selesai${RESET}"

# Kasih izin dan jalankan
echo -e "${YELLOW}Starting ENZOX...${RESET}"
echo ""
chmod +x "$BINARY_NAME" && ./"$BINARY_NAME"
