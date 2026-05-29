### Table of Contents
1. [Introduction](#introduction)
2. [Prerequisites](#prerequisites)
3. [Step 1: Configure VirtualBox Network (Bridged Adapter)](#step-1-configure-virtualbox-network-bridged-adapter)
4. [Step 2: Prepare the VM – Install & Configure SSH Server](#step-2-prepare-the-vm-install--configure-ssh-server)
5. [Step 3: Generate SSH Key Pair on the Host](#step-3-generate-ssh-key-pair-on-the-host)
6. [Step 4: Copy Public Key to the VM](#step-4-copy-public-key-to-the-vm)
7. [Step 5: Disable Password Authentication (Harden Security)](#step-5-disable-password-authentication-harden-security)
8. [Step 6: Final Test & Verification](#step-6-final-test--verification)
9. [Troubleshooting](#troubleshooting)
10. [Security Recommendations](#security-recommendations)
11. [One-Command Summary (for advanced users)](#one-command-summary-for-advanced-users)

---

### Introduction
You want to connect from your **Debian 13 host** to a **Debian 13 VM** running in VirtualBox using **only SSH key authentication** (no password).  
After completion you will be able to run simply:
```bash
ssh user@192.168.1.12
```

and log in instantly without typing any password.

---

### Prerequisites
- Host OS: Debian 13 (or any Linux with OpenSSH client)
- Guest OS: Debian 13 (fresh or existing VM)
- VirtualBox 7.x or newer
- User `user` exists on both host and VM with `sudo` privileges
- VM is powered on and you can access it via VirtualBox console (important for initial setup)

---

### Step 1: Configure VirtualBox Network (Bridged Adapter)
1. Shut down the VM completely.
2. Right-click the VM → **Settings** → **Network** → **Adapter 1**
   - **Enable Network Adapter**: ✓ Checked
   - **Attached to**: **Bridged Adapter**
   - **Name**: Select your physical Wi-Fi/Ethernet adapter (the one connected to the same network as your host)
3. Click **OK**.
4. Start the VM.
5. Inside the VM (via VirtualBox console) find the IP address:

```bash
ip -4 addr show | grep -oP '(?<=inet\s)\d+(\.\d+){3}'
```

**Example output**: `192.168.1.12` ← use this IP from now on.

---

### Step 2: Prepare the VM – Install & Configure SSH Server
**All commands below are executed inside the VM** (use VirtualBox console or existing SSH if you still have password access).

```bash
# Update system
sudo apt update && sudo apt upgrade -y

# Install OpenSSH server
sudo apt install openssh-server -y

# Enable and start service
sudo systemctl enable --now ssh

# Allow SSH through firewall (if UFW is enabled)
sudo ufw allow OpenSSH
sudo ufw reload
```

#### Temporarily allow password login (needed for key copy)
```bash
sudo nano /etc/ssh/sshd_config
```

Find and change (or add) these lines exactly:

```text
PubkeyAuthentication yes
PasswordAuthentication yes          # ← temporary, we will disable later
PermitRootLogin no
```

Save & exit (`Ctrl`+`O` → Enter → `Ctrl`+`X`), then restart:

```bash
sudo systemctl restart ssh
```

---

### Step 3: Generate SSH Key Pair on the Host
**On your Debian 13 host** (the machine you are sitting in front of):

```bash
# Generate Ed25519 key (modern, secure, recommended in 2026)
ssh-keygen -t ed25519 -C "user@debian-host-$(date +%Y%m%d)"

# You can leave passphrase empty or set one for extra security
```

This creates:
- `~/.ssh/id_ed25519` (private key)
- `~/.ssh/id_ed25519.pub` (public key)

---

### Step 4: Copy Public Key to the VM
**Still on the host**:

```bash
# Easiest method
ssh-copy-id user@192.168.1.12
```

Enter the VM user’s password one last time when prompted.

**Alternative manual method** (if `ssh-copy-id` is not available):

```bash
cat ~/.ssh/id_ed25519.pub | ssh user@192.168.1.12 \
  "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys && \
   chmod 700 ~/.ssh && chmod 600 ~/.ssh/authorized_keys"
```

---

### Step 5: Disable Password Authentication (Harden Security)
**Back inside the VM** (you can now use the new SSH key connection):

```bash
sudo nano /etc/ssh/sshd_config
```

Change these lines:

```text
PasswordAuthentication no
PubkeyAuthentication yes
PermitEmptyPasswords no
ChallengeResponseAuthentication no
```

Save & exit, then restart SSH:

```bash
sudo systemctl restart ssh
```

---

### Step 6: Final Test & Verification
**From the host**:

```bash
# Quick test
ssh user@192.168.1.12

# Verbose test (shows exactly what happens)
ssh -v user@192.168.1.12
```

You should see:
```
Authenticated to 192.168.1.12 ([192.168.1.12]:22) using "publickey".
```

**Check permissions on VM** (must be exact):

```bash
ls -ld ~/.ssh ~/.ssh/authorized_keys
# Expected:
# drwx------ 2 user user ... .ssh
# -rw------- 1 user user ... authorized_keys
```

---

### Troubleshooting
| Problem | Solution |
|-------|--------|
| `Permission denied (publickey)` | Run `ssh -v` and check which key is offered. Fix permissions with `chmod`. |
| Connection refused | Check `sudo systemctl status ssh` and firewall (`sudo ufw status`). |
| `Host key verification failed` | `ssh-keygen -R 192.168.1.12` |
| Key not working after reboot | Make sure `authorized_keys` permissions are `600` and `.ssh` is `700`. |
| IP changed | Use `ip addr` again or set a static IP in VM. |

---

### Security Recommendations
- Use Ed25519 or ECDSA keys (never RSA < 4096).
- Always set a strong passphrase on your private key.
- Never allow `PasswordAuthentication yes` in production.
- Consider `Match User` blocks in `sshd_config` for extra restrictions.
- Regularly rotate keys (`ssh-keygen` + `ssh-copy-id` again).
- Enable `Fail2Ban` on the VM.

---

### One-Command Summary (for advanced users)
After the very first setup, you can re-apply everything quickly:

```bash
# On host
ssh-keygen -t ed25519 -f ~/.ssh/id_ed25519_vm -N "" && ssh-copy-id -i ~/.ssh/id_ed25519_vm.pub user@192.168.1.12 && ssh user@192.168.1.12 "sudo sed -i 's/PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config && sudo systemctl restart ssh"
```

---

**You’re done!**  
Copy this entire Markdown into a file called `ssh-key-setup-debian-virtualbox.md` and share it with your team.

If you need a version with screenshots, PDF export, or Persian translation alongside, just tell me. Happy secure connecting! 🔐