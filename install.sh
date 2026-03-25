#!/data/data/com.termux/files/usr/bin/bash

# ==============================
# ENZOX INSTALLER
# ==============================

set -e

# Warna
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

# Cek binary
if [ ! -f "$BINARY_NAME" ]; then
    echo -e "${RED}[!] Binary '$BINARY_NAME' tidak ditemukan${RESET}"
    exit 1
fi

# Beri izin run
echo -e "${YELLOW}[1/3] Giving execute permission...${RESET}"
chmod +x "$BINARY_NAME"

# Install dependencies
echo -e "${YELLOW}[2/3] Installing dependencies...${RESET}"
pkg update -y
pkg install -y curl file git

# Izin storage
termux-setup-storage

# Install ke bin
echo -e "${YELLOW}[3/3] Installing to bin...${RESET}"
mkdir -p "$INSTALL_DIR"
cp "$BINARY_NAME" "$INSTALL_DIR/"
chmod +x "$INSTALL_DIR/$BINARY_NAME"

# Setup PATH kalau belum ada
if ! grep -q "export PATH=\"\$HOME/bin:\$PATH\"" "$HOME/.bashrc" 2>/dev/null; then
    echo "export PATH=\"\$HOME/bin:\$PATH\"" >> "$HOME/.bashrc"
fi

if ! grep -q "export PATH=\"\$HOME/bin:\$PATH\"" "$HOME/.zshrc" 2>/dev/null; then
    echo "export PATH=\"\$HOME/bin:\$PATH\"" >> "$HOME/.zshrc"
fi

export PATH="$INSTALL_DIR:$PATH"

echo ""
echo -e "${GREEN}======================================${RESET}"
echo -e "${GREEN}      INSTALL COMPLETED${RESET}"
echo -e "${GREEN}======================================${RESET}"
echo ""
echo -e "Sekarang tinggal ketik: ${CYAN}enzox${RESET}"
echo ""

# Langsung jalanin kalau user mau
echo -e "${CYAN}Jalankan sekarang? (y/n)${RESET}"
read -r run_now
if [[ "$run_now" == "y" || "$run_now" == "Y" ]]; then
    exec "$INSTALL_DIR/$BINARY_NAME"
fi
