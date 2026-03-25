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

clear
echo -e "${CYAN}======================================${RESET}"
echo -e "${GREEN}        ENZOX INSTALLER${RESET}"
echo -e "${CYAN}======================================${RESET}"
echo ""

# Cek binary
if [ ! -f "$BINARY_NAME" ]; then
    echo -e "${RED}[!] Binary '$BINARY_NAME' tidak ditemukan${RESET}"
    exit 1
fi

# Beri izin run
echo -e "${YELLOW}Giving execute permission...${RESET}"
chmod +x "$BINARY_NAME"

# Langsung jalankan
echo -e "${YELLOW}Running ENZOX...${RESET}"
echo ""
./"$BINARY_NAME"
