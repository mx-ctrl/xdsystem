#!/bin/bash
# =========================
# ENZOX Installer
# =========================

# Function to print info messages
info() {
    echo -e "\033[1;34m[INFO]\033[0m $1"
}

error() {
    echo -e "\033[1;31m[ERROR]\033[0m $1"
}

# Check if git is installed
if ! command -v git &> /dev/null; then
    info "Git not found. Installing git..."
    pkg update -y && pkg install git -y
fi

# Installation directory
INSTALL_DIR="$HOME/xdsystem"

# Clone repo if not exists, else pull latest
if [ ! -d "$INSTALL_DIR" ]; then
    info "Cloning ENZOX repository..."
    git clone https://github.com/mx-ctrl/xdsystem.git "$INSTALL_DIR"
else
    info "Repository already exists at $INSTALL_DIR. Pulling latest updates..."
    cd "$INSTALL_DIR" && git pull
fi

cd "$INSTALL_DIR" || { error "Failed to enter $INSTALL_DIR"; exit 1; }

# Make binary executable
if [ -f "enzox" ]; then
    info "Making enzox executable..."
    chmod +x enzox
else
    error "Binary enzox not found!"
    exit 1
fi

# Run ENZOX
info "Running ENZOX..."
./enzox
