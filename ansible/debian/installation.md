# Installing Ansible on Debian
Debian users can choose between the standard repository or the Ubuntu PPA for more recent versions.

While Ansible is available from the main Debian repository, this version can be outdated.

For a more recent version, Debian users can use the Ubuntu PPA according to the following table:



| Debian                                                      | Ubuntu                                                                 | UBUNTU_CODENAME                                     |
|--------------------------------------------------------------|-----------------------------------------------------------------------------------------------|-----------------------------------------------------|
| Debian 13 (Trixie)                                                | ShUbuntu 24.04 (Noble)                                         | noble                    |
| Debian 12 (Bookworm)                                                  | Ubuntu 22.04 (Jammy)                             | jammy                    |
| Debian 11 (Bullseye)                                                | Ubuntu 20.04 (Focal)                     | focal              |
| Debian 10 (Buster)                                               | Ubuntu 18.04 (Bionic)                      | bionic        |



The following example assumes that you already have wget and gpg installed.

Add the repository and install Ansible. Set UBUNTU_CODENAME=... based on the table above (we use jammy in this example):

```bash
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmor -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible
```