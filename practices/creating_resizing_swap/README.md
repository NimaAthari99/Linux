# Creating & Resizing Swap

## Table Of Contents
- [Create Swap File](#create-swap-file)
- [Permission Management](#permission-management)
- [Convert To Swap File](#convert-to-swap-file)
- [Make Configs Permanent](#make-configs-permanent)

---

## Create Swap File
```bash
sudo fallocate -l 4G /swapfile
```
OR (If gets error):
```bash
sudo dd if=/dev/zero of=/swapfile bs=1M count=4096
```

***[🔝 Table Of Contents](#table-of-contents)***

---

## Permission Management
```bash
sudo chmod 600 /swapfile
```

***[🔝 Table Of Contents](#table-of-contents)***

---

## Convert To Swap File
```bash
sudo swapon /swapfile
```

***[🔝 Table Of Contents](#table-of-contents)***

---

## Make Configs Permanent
```bash
sudo echo "/swapfile swap swap defaults 0 0" >> /etc/fstab
```
***[🔝 Table Of Contents](#table-of-contents)***

---