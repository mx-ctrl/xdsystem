#!/data/data/com.termux/files/usr/bin/bash

# ==============================
# ENZOX INSTALLER
# ==============================

GREEN='\033[1;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
RESET='\033[0m'

clear
echo -e "${CYAN}======================================${RESET}"
echo -e "${GREEN}        ENZOX INSTALLER${RESET}"
echo -e "${CYAN}======================================${RESET}"
echo ""

echo -e "${YELLOW}Downloading ENZOX...${RESET}"
curl -L "https://github.com/mx-ctrl/xdsystem/releases/download/latest/enzox" -o enzox

echo -e "${YELLOW}Setting permission...${RESET}"
chmod +x enzox

echo -e "${YELLOW}Starting ENZOX...${RESET}"
echo ""
exec ./enzox
