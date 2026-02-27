Install vmware bundle:
    https://dl2.soft98.ir/soft/u-v/VMware.Workstation.Pro.25H2.v25.0.1.rar?1772208087
```bash
cd /home/user/Downloads
```

Locate downloaded bundle:
```bash
ls -alh
```
Extract it, then give execute permission to your user & install needed pakages:
```bash
chmod  +x VMware-Workstation-Full-25H2-24995812.x86_64.bundle
su root
apt update
apt install linux-headers-$(uname -r) gcc make patch wget pkexec
```
Execute installer:
```bash
/home/user/Downloads/VMware.Workstation.Pro.25H2.Linux/VMware-Workstation-Full-25H2-24995812.x86_64.bundle
```

Build modules:
```bash
/usr/bin/vmware-modconfig --console --install-all
```