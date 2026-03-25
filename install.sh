#!/data/data/com.termux/files/usr/bin/bash

# ==============================
# ENZOX INSTALLER
# ==============================

# Warna
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
RESET='\033[0m'

clear
echo -e "${CYAN}======================================${RESET}"
echo -e "${GREEN}        ENZOX INSTALLER${RESET}"
echo -e "${CYAN}======================================${RESET}"
echo ""

# Kasih izin dan jalankan
echo -e "${YELLOW}Starting ENZOX...${RESET}"
echo ""
chmod +x enzox && ./enzox
