# Resizing Volumes

Check your new disk is created and ready to go:
```bash
sudo lsblk
OR
sudo fdisk -l
```

Create new partition:
```bash
sudo fdisk /dev/sdb     # Create new partition using fdisk
n                       # For new partition
p                       # Primary partition
1                       # Partition number one
ENTER                   # Use full space
t                       # Partition format
8e                      # Choose LVM
w                       # Write and exit
```
If `lv` not installed:
```bash
sudo apt install lvm2
```

sudo pvcreate /dev/sdb1

sudo vgextend vg_root /dev/sdb1

If not exist:
sudo vgcreate vg_root /dev/sdb1

For root:
sudo lvextend -l +100%FREE /dev/vg_root/root

sudo resize2fs /dev/vg_root/root

For var:
If exists:
lvextend -l +100%FREE /dev/vg_root/var

If not exist:
lvcreate -n var -l 100%FREE vg_root

mkfs.ext4 /dev/vg_root/var

For chacking changes:
df -h
vgs
lvs

