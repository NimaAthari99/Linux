# Git Basics – Step-by-Step Guide

This guide explains how to set up Git, connect to GitHub using **SSH** (recommended), and safely push your changes.

## 1. Create / Sign in to GitHub Account

- Go to https://github.com
- If you don't have an account → click **Sign up** and create one
- If you already have one → **Sign in** using your username/email and password

**Tip**: Enable **two-factor authentication (2FA)** in Settings → Password and authentication for better security.

## 2. Set Up SSH Connection (Recommended Way)

Using SSH is better than HTTPS because:
- No need to enter username/token every time
- More secure
- Faster

### Step 2.1 – Generate an SSH key (if you don't have one)

Run this command in your terminal:

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```
Press Enter to accept the default file location (~/.ssh/id_ed25519)

Enter a passphrase (recommended for extra security) or press Enter for none

**Note:** ed25519 is the modern, secure, and recommended key type in 2025–2026. GitHub fully supports it.

### Step 2.2 – Copy your public key to clipboard

# On Linux / macOS:
cat ~/.ssh/id_ed25519.pub

# On Windows (Git Bash or WSL):
cat ~/.ssh/id_ed25519.pub | clip

Copy the entire output (starts with ssh-ed25519 ... and ends with your email).

### Step 2.3 – Add the public key to GitHub

Go to GitHub → click your profile picture (top right) → Settings

In the left sidebar: SSH and GPG keys

Click New SSH key (or Add SSH key)

Give it a descriptive title (e.g. "My Ubuntu Laptop 2026")

Paste the key into the "Key" field

Click Add SSH key


### Step 2.4 – Test the SSH connection
```bash
ssh -T git@github.com
```
You should see something like:
```bash
Hi NimaAthari99! You've successfully authenticated, but GitHub does not provide shell access.
```
If you see this → SSH is working correctly!

### Step 2.5 – Switch your repository to use SSH (if it's currently HTTPS)
Check current remote URL:
```bash
git remote -v
```
If you see https://github.com/... → change it to SSH:
```bash
git remote set-url origin git@github.com:USERNAME/REPOSITORY.git
```

Example:
```bash
git remote set-url origin git@github.com:NimaAthari99/Linux.git
```
Verify again:
```bash
git remote -v
```
You should now see sothing like this:
```bash
origin  git@github.com:NimaAthari99/Linux.git (fetch)
origin  git@github.com:NimaAthari99/Linux.git (push)
```

## 3. How to Safely Push Changes
### Step 3.1 – Pull latest changes first (very important!)
Before pushing, always bring your local branch up to date:
```bash
git pull --rebase origin main
```
What does this do?

Downloads the latest commits from GitHub (git fetch); Replays your local commits on top of the newest remote commits; Keeps history clean and linear (no unnecessary merge commits)

### Step 3.2 – If there are conflicts
If Git says there are conflicts during rebase:

```bash 
Open the conflicting files → fix them manually
Mark them as resolved:

Bashgit add <file>
# or
git add .
```

Continue the rebase:

```bash
git rebase --continue
```

Repeat until finished, then push:

```bash
git push -v
```

### Step 3.3 – Normal push
When everything is ready:
```bash
git push -v
```

The -v (verbose) flag shows more details — very useful when learning.
