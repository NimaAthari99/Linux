# Some Debian Commands

## Table Of Contents
- [Basic Commands](#basic-commands)
- [Apt Commands](#apt-commands)
- [Disk Management](#disk-management)
    * [DF Command](#df-command)
    * [Volume Groups](#volume-groups)
- [Network Managing Commands](#network-managing-commands)
- [Firewalls](#firewalls)
    * [IPTables Commands](#iptables-commands)
- [SSH](#ssh)
- [Git Commands](#git-commands)
- [Docker Commands](#docker-commands)
- [MySQL Commands](#mysql-commands)
- [Nginx Commands](#nginx-commands)
- [Bento Commands](#bento-commands)
- [VIM Shortcuts](#vim-shortcuts)
- [OpenVPN3 Commands](#openvpn3-commands)
- [Ansible Commands](#ansible-commands)

---

## Basic Commands

| Command                                                                           | What it does                                      | When to use it                                                |
|-----------------------------------------------------------------------------------|---------------------------------------------------|---------------------------------------------------------------|
| `cp /home/USERNAME/.bashrc /root/`                                                | Copy bash configs in root user                    | **Allways** - It's not critical but make me work easier.      |
| `echo "HELLO WORLD!" >> helloworld.txt`                                           | Append "HELLO WORLD!" to hellowold.txt file.      | **Sometimes**                                                 |
| `echo "linux ALL=(ALL) NOPASSWD:ALL" PIPELINE sudo tee /etc/sudoers.d/linux`      | Sudo access without pasword                       | **Never** — Use with safty                                    |
| `sysctl -a`                                                                       | Shows kernel's parameters                         | **Rarely**                                                    |
| `sysctl --system`                                                                 | Save your changes                                 |                                                               |
| `lsb_release -cs`                                                                 | Check your distro                                 | **Rarely**                                                    |
| `sed -i 's/#Port 22/Port 22/g' /etc/ssh/sshd_config`                              | Uncomment Port22, and use it                      | **Rarely**                                                    |

sudo code . --user-data-dir --no-sandbox

***[🔝 Table Ofcreate-swap-file Contents](#table-of-contents)***

---


## Apt Commands
| Command                       | What it does                                                  | When to use it        |
|-------------------------------|---------------------------------------------------------------|-----------------------|
| `apt update`                  | Update packages                                               | **Often**     |
| `apt upgrade`                 | Upgrade packages                                              | **Often**     |
| `apt full-upgrade`            | Upgrade packages                                              | **Often**     |
| `apt install PACKAGE`         | Install packages                                              | **Often**     |
| `apt remove PACKAGE`          | Remove packages                                               | **Often**     |
| `apt modernize-sources`       | Delete `sources.list` file and write a modern syntax file     | **Better to use**     |

***[🔝 Table Of Contents](#table-of-contents)***

---

## Disk Management

### DF Command
<!--  source   → نام فایل‌سیستم
 fstype   → نوع فایل‌سیستم
 itotal   → تعداد اینودهای کل
 iused    → اینودهای استفاده‌شده
 iavail   → اینودهای آزاد
 size     → کل حجم
 used     → حجم استفاده‌شده
 avail    → حجم قابل استفاده
 pcent    → درصد پر بودن
 target   → مسیر mount -->

***[🔝 Table Of Contents](#table-of-contents)***

---

### Volume Groups

***[🔝 Table Of Contents](#table-of-contents)***

---

### List Disks
lsblk

***[🔝 Table Of Contents](#table-of-contents)***

----

## Network Managing Commands

| Command                           | What it does                              | When to use it        |
|-----------------------------------|-------------------------------------------|-----------------------|
| `ip -br a`                        | Network info                              | **Often**             |
| `ip a`                            | Network info                              | **Often**             |
| `ifconfig`                        | Network info                              | **Often**             |
| `dig +short test.domain.ir`       | Will shows test.domain.ir ip address      | **Often**             |

***[🔝 Table Of Contents](#table-of-contents)***

---

## Firewalls

### IPTables Commands



***[🔝 Table Of Contents](#table-of-contents)***

---

## SSH
| Command                               | What it does                                            | When to use it                  |
|---------------------------------------|---------------------------------------------------------|---------------------------------|
| `ssh-copy-id linux@192.168.1.11`      | Will cop ssh key on destination node                    | **Rarely**                      |
| `ssh -t`                              | Check SSH Configs                                       | **Often**                      |
| `ssh-keygen -t ed25519`               | Generating public/private ed25519 key pair              | **Often**                      |

***[🔝 Table Of Contents](#table-of-contents)***

---

## Git Commands

| Command                                                      | What it does                                                                                  | When to use it                                      |
|--------------------------------------------------------------|-----------------------------------------------------------------------------------------------|-----------------------------------------------------|
| `git status`                                                 | Shows which files are changed, staged, or untracked                                           | **Always** — before every commit                    |
| `git init`                                                   | Initialize git directory on system.                                                           | **Always** — before every commit                    |
| `git add .`                                                  | Stage (prepare) **all** new and modified files in current folder                              | Most common way to stage changes                    |
| `git add -u`                                                 | Stage only **modified and deleted** files (ignores completely new files)                      | When you edited or deleted files only               |
| `git add -A`                                                 | Stage **everything** (new, modified, deleted files — even in subfolders)                      | When you added new folders or deleted files         |
| `git remote`                                                 | Shows git remotes on system                                                                   | When you want to change from HTTPS to SSH           |
| `git remote add origin git@github.com:USERNAME/REPO.git`     | Add the URL of your "origin" remote (e.g. switch from HTTPS to SSH)                           | When you want to change from HTTPS to SSH           |
| `git remote set-url origin git@github.com:USERNAME/REPO.git` | Change the URL of your "origin" remote (e.g. switch from HTTPS to SSH)                        | When you want to change from HTTPS to SSH           |
| `git switch main`                                            | Switch to the main branch                                                                     | Before creating a new branch or pulling             |
| `git switch -c feature/name`                                 | Create a new branch and switch to it                                                          | Every time you start a new task                     |
| `git commit -m "Clear message"`                              | Save your staged changes with a message                                                       | After `git add`                                     |
| `git push`                                                   | Upload your commits to GitHub (to the current branch)                                         | After commit — sends your work online               |
| `git pull`                                                   | Download latest changes from GitHub and merge them                                            | Before starting new work                            |
| `git pull --rebase origin main`                              | Download latest changes and **replay** your commits on top (cleaner history)                  | When you want a very clean linear history           |
| `git branch`                                                 | List all local branches                                                                       | To see what branches you have                       |
| `git branch -a`                                              | List all branches (local + remote)                                                            | To see remote branches too                          |
| `git branch -d feature/name`                                 | Delete a local branch **safely** (only if already merged)                                     | After your Pull Request is merged                   |
| `git branch -D feature/name`                                 | Force delete a local branch (even if not merged)                                              | When you want to throw away a branch                |
| `git push origin --delete feature/name`                      | Delete a branch from GitHub (remote)                                                          | Clean up after merging                              |
| `git log --oneline --graph --all`                            | Show beautiful history of all branches                                                        | To see the full picture of your project             |

***[🔝 Table Of Contents](#table-of-contents)***

---

## Docker Commands

| Command                                                                                                           | What it does                                          |
|-------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------|
| `docker version`                                                                                                  | Shows docker installed details                        |
| `docker images`                                                                                                   | Shows active docker images                            |
| `docker image load -i FILE.tar`                                                                                   | Shows active docker images                            |
| `docker image rm IMAGE`                                                                                           | Shows active docker images                            |
| `docker compose ps`                                                                                               |                                                       |
| `docker compose ps -a`                                                                                            |                                                       |
| `docker compose images`                                                                                           |                                                       |
| `docker compose build`                                                                                            |                                                       |
| `docker compose up`                                                                                               |                                                       |
| `docker compose up -d`                                                                                            |                                                       |
| `docker compose up --force-recreate COONTAINER_NAME`                                                              |                                                       |
| `docker compose down`                                                                                             |                                                       |
| `docker compose down --remove-orphans`                                                                            |                                                       |
| `docker compose logs`                                                                                             |                                                       |
| `docker compose logs COONTAINER_NAME --tail=100`                                                                  |                                                       |
| `docker compose exec`                                                                                             |                                                       |  
| `docker compose scale`                                                                                            |                                                       |
| `docker logs SERVICE_NAME `                                                                                       |                                                       |
| `docker rm -f SERVICE_NAME `                                                                                      |                                                       |
| `docker run -d --name mysql -e MYSQL_ROOT_PASSWORD=*P@SSW0RD mysql:5.7`                                           |                                                       |
| `docker run –d --name mysql_container -v mysql_data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=*P@SSW0RD mysql:57`     |                                                       |
| `docker exec -it *mysql bash`                                                                                     |                                                       |
| `docker volume ls `                                                                                               |                                                       |
| `docker volume inspect *mysql_data  `                                                                             |                                                       |
| `docker tag registry.gitlab.com/user/project:latest registry.gitlab.com/newuser/newrepo:newtag `                  |                                                       |
| `docker network create *elk_net`                                                                                  |                                                       |
| `docker network create web_net -o com.docker.network.bridge.name=web_net`                                         |                                                       |
| `dcker save -o DESTINATION.tar PATH_TO_IMAGE/IMAGE:VERSION`                                                       | Save docker image as a `.tar` file                    |
| `docker load -i DESTINATION.tar`                                                                                  | Loads image from `.tar` file                          |
| `docker login registry.gitlab.com`                                                                                | Login by docker user                                  |
| `docker push SERVER_ADDRESS/PATH/IMAGE:VERSION`                                                                   | Save image in `SERVER_ADDRESS/PATH/IMAGE:VERSION`     |



***[🔝 Table Of Contents](#table-of-contents)***

---

## MySQL Commands

| Command                                                      | What it does                                            | When to use it                                      |
|--------------------------------------------------------------|-----------------------------------------------------------------------------------------------|-----------------------------------------------------|
| `mysql –u root –p`            |       |       |
| `show databases;`             |       |       |
| `create database *db01;`      |       |       |

***[🔝 Table Of Contents](#table-of-contents)***

---


## Nginx Commands

| Command           | What it does                  | When to use it                        |
|-------------------|-------------------------------|---------------------------------------|
| `nginx -t`        | Test nginx configurations     | Want to test your configurations      |

***[🔝 Table Of Contents](#table-of-contents)***

---


## Bento Commands

| Command               | What it does                  | When to use it                        |
|-----------------------|-------------------------------|---------------------------------------|
| `bento list`          |       |       |
| `bento test`          |       |       |
| `bento upload`        |       |       |

***[🔝 Table Of Contents](#table-of-contents)***

---


## VIM Shortcuts

| Command               | What it does                  | When to use it                        |
|-----------------------|-------------------------------|---------------------------------------|
| `yw`                              | Copy word      |       |
| `yy`                              | Copy line      |       |


| `dw`                              | Cut word      |       |
| `dd`                              | Cut line      |       |
| `d0`                              | Cut from cursur to first of line      |       |
| `x`                               | Cut character from curser      |       |


| `u`                               | Undo      |       |
| `CNTRL + R`                       | Redo      |       |
| ` ` `                             | Goto last changed character      |       |


| `p`                               | Paste      |       |
| `P`                               | Paste      |       |
| `CNTRL + V`                       | Paste      |       |


| `r`                               | Replace character      |       |


| `b`                               | Go to first character of word curser in on      |       |
| `B`                               | Go to first character of word curser in on      |       |
| `e`                               | Go to last character of word curser in on       |       |
| `E`                               | Go to last character of word curser in on       |       |
| `w`                               | Go to next word       |       |
| `W`                               | Go to next word       |       |
| `ge`                              | Go to next word       |       |
| `N`                               | Go to next pattern       |       |
| `n`                               | Go to last pattern       |       |
| `j`                               | Go to next line       |       |
| `k`                               | Go to last line       |       |
| `h`                               | Go to last left character       |       |
| `l`                               | Go to last left character       |       |
| `$`                               | Go to end of current line       |       |
| `gg`                              | Go to first character of first file's line       |       |
| `G`                               | Go to first character of last file's line       |       |


| `/`                               | Search for word       |       |


| `i`                               | Insert mode from curser position       |       |
| `a`                               | Insert mode after curser position       |       |
| `o`                               | Insert mode from next line       |       |
| `O`                               | Insert mode from last line       |       |
| `ESC`                             | Exit current mode       |       |


| `:set spell`                      | Check word spell       |       |
| `:colorscheme <tab></tab>`        | Change color of vim       |       |
| `:match ErrorMsg /\%>73v.\+/`     | Highlight word       |       |
| `:set number`                     | Highlight word       |       |
| `:set guifont = courier`          | Change font to courier       |       |

**`Note: For changing something for some rows in one column:`**
```bash
CNTRL + V
CHOOSE LINES AND CHARACTERS YOU WANT
SHIFT + i
TYPE AND CHANGE WHAT YOU WANT
ESC
```
Now yor changes applied!

***Plugins:***
- Scrooloose/nerdtree: For managing files
- Ervandew/supertab: For completing coding
- jeffkreeftmeijer/vim-numbertoggle: Enables line numberig using a shortcut key
- Vim-scripts/vim-auto-save: Will save our changes automatically in a period of time
- Honza/vim-snippets
- Jiangmiao/auto-pairs: Auto types paranthezes and berackets
- ntpeters/vim-better-whitespace: Makes shitespace better and more beautiful
- Ap/vim-css-color: Better and more beautiful css
- Alvan/vim-closetag: Stop getting error
- 

***[🔝 Table Of Contents](#table-of-contents)***

---

## OpenVPN3 Commands

| Command                                                                                                   | What it does                      |
|-----------------------------------------------------------------------------------------------------------|-----------------------------------|
| `openvpn3 config-import --config /PATH_TO_FILE/OVPN_CONFIG.ovpn --name NEW_CONFIG_FILE --persistent`      | New Config File                   |
| `openvpn3 config-manage --show --config NEW_CONFIG_FILE`                                                  | Show Config File                  |
| `openvpn3 session-start --config /PATH_TO_FILE/OVPN_CONFIG.ovpn`                                          | Connect OpenVPN3 File             |
| `openvpn3 sessions-list`                                                                                  | Show OpenVPN3 Sessions List       |
| `openvpn3 config-manage --disconnect --config NEW_CONFIG_FILE`                                            | Disconnect From Config File       |
| `openvpn3 session-manage --disconnect --path=OVPN_CONFIG_FILE`                                            | Disconnect From OpenVPN File      |
| `openvpn3 config-remove  --config NEW_CONFIG_FILE`                                                        | Remove Config File                |

***[🔝 Table Of Contents](#table-of-contents)***

---

## Ansible Commands

| Command                                                                                   | What it does                                  |
|-------------------------------------------------------------------------------------------|-----------------------------------------------|
| `ansible -i inventory/host.yaml all -m ping`                                              | Get pong response from all defined hosts      |
| `ansible-playbook -i hosts.yaml /PATH_TO_PLAYBOOK/PLAYBOOK.yml`                           | Run your playbook file                        |
| `ansible-playbook -i hosts.yaml /PATH_TO_PLAYBOOK/PLAYBOOK.yml --ask-become-pass`         | Ask sudo password if needed                   |
| `ansible-playbook -i hosts.yaml /PATH_TO_PLAYBOOK/PLAYBOOK.yml --list-servers`            | List hosts which playbook will execute on     |
| `ansible-playbook -i hosts.yaml /PATH_TO_PLAYBOOK/PLAYBOOK.yml --list-tags`               | Tags which playbook will execute them         |
| `ansible-playbook -i hosts.yaml --limit=tools-server /PATH_TO_PLAYBOOK/PLAYBOOK.yml`      | Will execute on just `tools-server` host      |
| `ansible-playbook -i hosts.yaml  /PATH_TO_PLAYBOOK/PLAYBOOK.yml --tags=set_apt_mirror`    | Will run just `set_apt_mirror` tags           |

***[🔝 Table Of Contents](#table-of-contents)***

---