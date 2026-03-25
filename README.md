---

ENZOX 🚀

ENZOX is a Sniffet vpn tool that runs directly on Termux.

Installation & Running

One-liner command:

```bash
git clone https://github.com/mx-ctrl/xdsystem.git && cd xdsystem && chmod +x enzox && ./enzox
```

Or use the installer:

```bash
bash install.sh
```

Run again later:

```bash
cd ~/xdsystem && ./enzox
```

Requirements

· Termux (latest version recommended)
· Internet connection
· Git will be installed automatically if not present

Folder Structure

```
~/xdsystem/
├── enzox       # Main binary
├── install.sh  # Installer script
└── README.md   # Documentation
```

Troubleshooting

Git not found:

```bash
pkg install git
```

enzox file missing:

```bash
cd ~/xdsystem && ls -la
```
