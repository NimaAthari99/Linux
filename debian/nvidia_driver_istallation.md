Installing the NVIDIA driver on an ASUS ROG Strix G16 (typically RTX 40-series GPU) running Debian 13 (Trixie) requires enabling non-free repositories and installing through the Debian package manager, or using the official NVIDIA .run file for the latest versions (580+ or 590+). For modern 40-series cards, using nvidia-open drivers or the proprietary 550+ drivers from Trixie is recommended. 
### Prerequisites ###
Before installing, ensure your system is up-to-date and necessary build tools are installed: 
```bash
sudo apt update
sudo apt full-upgrade
sudo apt install linux-headers-amd64 build-essential dkms firmware-misc-nonfree
```
### Method 1: Using Debian 13 Repositories (Recommended) ###
This method ensures the driver integrates properly with your system updates. 
1. Enable non-free and contrib repositories:
If not already done, edit /etc/apt/sources.list to add non-free and contrib to your main repository lines.
2. Install the driver:
```bash
sudo apt install nvidia-driver nvidia-kernel-dkms
```
Note: For the best support of new cards (RTX 40 series), nvidia-open-kernel-dkms might be required.
3. Reboot:
```bash
sudo reboot
```
### Method 2: Installing Official NVIDIA Driver (For Newest Drivers/50xx Series) ###
If you need newer drivers (e.g., 590.x) for gaming performance, use the NVIDIA proprietary installer. 
1. Download the driver: Download the latest Linux x86_64 .run file from NVIDIA's website.
2. Stop Display Manager:
```bash
sudo systemctl stop gdm3  # Or lightdm, sddm, etc.
```
3. Install the driver:
```bash
chmod +x NVIDIA-Linux-x86_64-*.run
sudo ./NVIDIA-Linux-x86_64-*.run
```
4. Important Choices: Select "Yes" to install 32-bit libraries, "Yes" to register with DKMS, and "Yes" to rebuild initramfs. 
### Handling Secure Boot (MOK) ###
If you have Secure Boot enabled in your BIOS, you must enroll a Machine Owner Key (MOK) during reboot when prompted, or the driver will not load. 
1. If you have Secure Boot enabled in your BIOS, you must enroll a Machine Owner Key (MOK) during reboot when prompted, or the driver will not load. 
```bash
sudo mkdir -p /var/lib/dkms
sudo openssl req -new -x509 -newkey rsa:2048 -keyout /var/lib/dkms/mok.key -out /var/lib/dkms/mok.pub -nodes -days 3650 -subj "/CN=DKMS module signing key"
```
2. Import Key:
```bash
sudo mokutil --import /var/lib/dkms/mok.pub
```
3. Reboot and follow the instructions to "Enroll MOK". 
### Verification ###
After rebooting, verify the installation by checking for your GPU details: 
```bash
nvidia-smi
```
### Known Issues & Tips ###

- Asus Rog Strix G16 (2025/4070 Ti+): If your GPU is very new (e.g., 50-series), you may need the 590.x+ beta driver and nvidia-open to avoid compatibility issues.
- Optimus Technology: To manage hybrid graphics (Intel/AMD + NVIDIA), install nvidia-settings and, for better control, consider tools like asusctl.
- Black Screen: If you experience a black screen, try adding nvidia-drm.modeset=1 to your GRUB_CMDLINE_LINUX in /etc/default/grub and run update-grub. 
