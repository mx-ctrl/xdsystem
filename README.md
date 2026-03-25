<div align="center">
🚀 ENZOX
A Powerful VPN Sniffer Tool optimized for Termux environments.
</div>
📖 About
ENZOX is a lightweight, efficient command-line tool designed specifically for Termux users to monitor and analyze VPN network traffic.
⚙️ Requirements
Ensure your Termux environment meets the following requirements before proceeding:
 * 📱 Termux application installed on your Android device.
 * 🌐 Active Internet Connection.
 * 📦 git package installed in Termux.
🚀 Installation & Quick Start
You can download, configure, and launch ENZOX in a single command. Open your Termux and paste the following:
git clone [https://github.com/mx-ctrl/xdsystem.git](https://github.com/mx-ctrl/xdsystem.git) && cd xdsystem && chmod +x enzox && ./enzox

💻 Usage (Run)
If you have already installed ENZOX and just want to run it again, use the following commands:
cd ~/xdsystem
./enzox

🛠️ Commands Summary
Here is a breakdown of what the installation commands actually do:
| Command | Description |
|---|---|
| git clone https://github.com/mx-ctrl/xdsystem.git | 📥 Downloads the tool repository to your local device. |
| cd xdsystem | 📂 Navigates into the downloaded folder. |
| chmod +x enzox | 🔑 Grants executable permissions to the script. |
| ./enzox | ▶️ Runs the tool. |
🔧 Troubleshooting
If you encounter any issues during installation or execution, try these common fixes:
1. Error: "git: command not found" Solution: You need to install git first. Run this command:
pkg update && pkg install git -y

2. Error: "Permission denied" or "No such file or directory" Solution: Ensure you are in the correct directory and check the files using:
ls -la

⚠️ Disclaimer
> USE RESPONSIBLY. > ENZOX is created for educational and security auditing purposes only. You are strictly permitted to test networks that you own or have explicit permission to audit. The developer holds no responsibility for any misuse, damage, or illegal activities caused by utilizing this tool.
> 
