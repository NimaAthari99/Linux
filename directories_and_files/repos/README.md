# Debian Repos

## Table Of Contents
- [For Docker](#for-docker)
    1) [Docker For Debian 12 (Bookworm)](#docker-for-debian-12-bookworm)
- [For Hashicorp](#for-hashicorp)
    1) [Hashicorp For Debian 13 (Trixie)](#hashicorp-for-debian-13-trixie)
    2) [Hashicorp For Debian Forky](#hashicorp-for-debian-forky)
- [For OpenVPN](#for-openvpn)
    1) [OpenVPN For Debian 12 (Bookworm)](#openvpn-for-debian-12-bookworm)
- [For VSCode](#for-vscode)
    1) [VSCode For Debian Stable](#vscode-for-debian-stable)
- [AnyDesk](#anydesk)
    1) [AnyDeskCode For All](#anydeskcode-for-all)
- [For Debian](#for-debian)
    1) [Debian 13 (Trixie)](#debian-13-trixie)
    2) [Debian 12 (Bookworm)](#debian-12-bookworm)
    3) [Debian 11 (Bullseye)](#debian-11-bullseye)
    4) [Debian Stable](#debian-stable)
    5) [Debian Testing](#debian-testing)
    6) [Debian Sid](#debian-sid)
    7) [Debian Forky](#debian-forky)

---

***`ito.gov.ir`***
https://archive.ito.gov.ir/

***[🔝 Table Of Contents](#table-of-contents)***

---

### For Docker

***`mobinhost.com`***
https://docker.mobinhost.com/

1) #### Docker For Debian 12 (Bookworm)

***`mecan.ir Bookworm Docker`***
```bash
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://repo.mecan.ir/repository/debian-docker/
Suites: bookworm
Components: stable
Signed-By: /etc/apt/keyrings/docker.gpg
```

***[🔝 Table Of Contents](#table-of-contents)***

---


### For Hashicorp

1) #### Hashicorp For Debian 13 (Trixie)

***`hashicorp.com Trixie Hashicorp`***
```bash
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://apt.releases.hashicorp.com/
Suites: trixie
Components: main
Signed-By: /usr/share/keyrings/hashicorp-archive-keyring.gpg
```

2) #### Hashicorp For Debian Forky

***`hashicorp.com Forky Hashicorp`***
```bash
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://apt.releases.hashicorp.com/
Suites: forky
Components: main
Signed-By: /usr/share/keyrings/hashicorp-archive-keyring.gpg
```

***[🔝 Table Of Contents](#table-of-contents)***

---


### For OpenVPN

1) #### OpenVPN For Debian 12 (Bookworm)

***`openvpn.net Bookworm OpenVPN`***
```bash
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://build.openvpn.net/debian/openvpn/stable/
Suites: bookworm
Components: main
Signed-By: /etc/apt/keyrings/openvpn-repo.gpg
```

***[🔝 Table Of Contents](#table-of-contents)***

---


### For VSCode

1) #### VSCode For Debian Stable

***`microsoft.com Stable VSCode`***
```bash
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://packages.microsoft.com/repos/code
Suites: stable
Components: main
Architectures: amd64
Signed-By: /usr/share/keyrings/microsoft.gpg
```

***[🔝 Table Of Contents](#table-of-contents)***

---


### AnyDesk

#### AnyDeskCode For All

***`1. anydesk.com AnyDesk`***
```bash
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://deb.anydesk.com/
Suites: all
Components: main
Signed-By: /etc/apt/keyrings/keys.anydesk.com.asc
```

***[🔝 Table Of Contents](#table-of-contents)***

---

### For Debian

1) #### Debian 13 (Trixie)

***`1. iut.ac.ir Trixie Debian 13`***
<!-- NOT WORKS NOW 14050111 -->
```bash
# trixie
# Modernized from /etc/apt/sources.list
Types: deb
URIs: http://repo.iut.ac.ir/debian/
Suites: trixie
Components: main
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg

# trixie-updates
# Modernized from /etc/apt/sources.list
Types: deb
URIs: http://repo.iut.ac.ir/debian/
Suites: trixie-updates
Components: main
Signed-By:
```

***`2. arvancloud.ir Trixie Debian 13`***
<!-- NOT WORKS NOW 14050111 -->
```bash
# Modernized from /etc/apt/sources.list
Types: deb
URIs: http://mirror.arvancloud.ir/debian/
Suites: trixie
Components: main
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg
```

***`3. debian.org Trixie Debian 13`***
```bash
# trixie
# Modernized from /etc/apt/sources.list
Types: deb
URIs: http://deb.debian.org/debian/
Suites: trixie
Components: main contrib non-free non-free-firmware
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg

# trixie-updates
# Modernized from /etc/apt/sources.list
Types: deb
URIs: http://deb.debian.org/debian/
Suites: trixie-updates 
Components: main contrib non-free non-free-firmware
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg

# trixie-security
# Modernized from /etc/apt/sources.list
Types: deb
URIs: http://security.debian.org/debian-security
Suites: trixie-security 
Components: main contrib non-free non-free-firmware
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg
```

***`4. ito.gov.ir Trixie Debian 13`***
```bash
# trixie
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://archive.ito.gov.ir/debian/
Suites: trixie
Components: main contrib non-free non-free-firmware
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg

# trixie-updates
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://archive.ito.gov.ir/debian/
Suites: trixie-updates
Components: main contrib non-free non-free-firmware
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg

# trxie-piroposed-updates
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://archive.ito.gov.ir/debian/
Suites: trxie-piroposed-updates
Components: main contrib non-free non-free-firmware
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg

# trixie-backports
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://archive.ito.gov.ir/debian/
Suites: trixie-backports
Components: main contrib non-free non-free-firmware
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg

# trixie-backports-sloppy
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://archive.ito.gov.ir/debian/
Suites: trixie-backports-sloppy
Components: main contrib non-free non-free-firmware
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg
```

***`5. runflare.com Trixie Debian 13`***
```bash
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://mirror-linux.runflare.com/debian/
Suites: trixie
Components: main contrib non-free non-free-firmware
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg
```

***`6. sbu.ac.ir Trixie Debian 13`***
```bash
# Modernized from /etc/apt/sources.list
Types: deb
URIs: http://mirror.sbu.ac.ir/debian/
Suites: trixie
Components: main contrib non-free non-free-firmware
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg
```

***[🔝 Table Of Contents](#table-of-contents)***

---


2) #### Debian 12 (Bookworm)

***`1. iut.ac.ir Bookworm Debian 12`***
<!-- NOT WORKS NOW 14050111 -->
```bash
# Modernized from /etc/apt/sources.list
Types: deb
URIs: http://repo.iut.ac.ir/debian/
Suites: bookworm
Components: main
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg
```

***`2. shatel.ir Bookworm Debian 12`***
```bash
# bookworm
# Modernized from /etc/apt/sources.list
Types: deb deb-src
URIs: http://mirror.shatel.ir/debian
Suites: bookworm 
Components: main contrib non-free non-free-firmware
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg

# bookworm-security
# Modernized from /etc/apt/sources.list
Types: deb deb-src
URIs: http://mirror.shatel.ir/debian-security/
Suites: bookworm-security
Components: main contrib non-free non-free-firmware
Signed-By: 

# bookworm-updates
# Modernized from /etc/apt/sources.list
Types: deb-src
URIs: http://mirror.shatel.ir/debian/
Suites: bookworm-updates
Components: main contrib non-free non-free-firmware
Signed-By: 

# bookworm-backports
# Modernized from /etc/apt/sources.list
Types: deb-src
URIs: http://mirror.shatel.ir/debian/
Suites: bookworm-backports
Components: main contrib non-free non-free-firmware
Signed-By: 
```

***`3. ito.gov.ir Trixie Debian 13`***
```bash
# bookworm
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://archive.ito.gov.ir/debian/
Suites: bookworm
Components: main contrib non-free non-free-firmware
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg

# bookworm-updates
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://archive.ito.gov.ir/debian/
Suites: bookworm-updates
Components: main contrib non-free non-free-firmware
Signed-By:

# bookworm-proposed-updates
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://archive.ito.gov.ir/debian/
Suites: bookworm-proposed-updates
Components: main contrib non-free non-free-firmware
Signed-By: 

# bookworm-backports
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://archive.ito.gov.ir/debian/
Suites: bookworm-backports
Components: main contrib non-free non-free-firmware
Signed-By: 

# bookworm-backports-sloppy
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://archive.ito.gov.ir/debian/
Suites: bookworm-backports-sloppy
Components: main contrib non-free non-free-firmware
Signed-By: 

# bookworm-security
# Modernized from /etc/apt/sources.list
Types: deb deb-src
URIs: http://deb.debian.org/debian-security/
Suites: bookworm-security
Components: main contrib non-free non-free-firmware
Signed-By: 
```

***[🔝 Table Of Contents](#table-of-contents)***

---


3) #### Debian 11 (Bullseye)

<!-- NOT WORKS NOW 14050111 -->
***`1. iut.ac.ir Bullseye Debian 11`***
```bash
# bullseye
# Modernized from /etc/apt/sources.list
Types: deb
URIs: http://repo.iut.ac.ir/debian/
Suites: bullseye
Components: main
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg

# NOT WORKS NOW 14050111
# bullseye-updates
# Modernized from /etc/apt/sources.list
Types: deb
URIs: http://repo.iut.ac.ir/debian/
Suites: bullseye-updates
Components: main
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg
```

***[🔝 Table Of Contents](#table-of-contents)***

---


4) #### Debian Stable

***`1. ito.gov.ir Stable Debian Stable`***
```bash
# stable
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://archive.ito.gov.ir/debian/
Suites: stable
Components: main contrib non-free non-free-firmware
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg

# stable-updates
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://archive.ito.gov.ir/debian/
Suites: stable-updates
Components: main contrib non-free non-free-firmware
Signed-By:

# stable-proposed-updates
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://archive.ito.gov.ir/debian/
Suites: stable-proposed-updates
Components: main contrib non-free non-free-firmware
Signed-By:

# stable-backports
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://archive.ito.gov.ir/debian/
Suites: stable-backports
Components: main contrib non-free non-free-firmware
Signed-By: 
```

***[🔝 Table Of Contents](#table-of-contents)***

---


5) #### Debian Testing

***`1. debian.org Testing Debian Testing`***
```bash
# Modernized from /etc/apt/sources.list
Types: deb
URIs: http://deb.debian.org/debian/
Suites: testing
Components: main contrib non-free non-free-firmware
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg
```

***[🔝 Table Of Contents](#table-of-contents)***

---


6) #### Debian Sid

<!-- NOT WORKS NOW 14050111 -->
***`1. iut.ac.ir Sid Debian Sid`***
```bash
# sid
# Modernized from /etc/apt/sources.list
Types: deb
URIs: http://repo.iut.ac.ir/debian/
Suites: sid
Components: main contrib non-free non-free-firmware
Signed-By: 


# NOT WORKS NOW 14050111
# sid-updates
# Modernized from /etc/apt/sources.list
Types: deb
URIs: http://repo.iut.ac.ir/debian/
Suites: sid-updates
Components: main contrib non-free non-free-firmware
Signed-By: 
```

***`2. debian.org Sid Debian Sid`***
```bash
# Modernized from /etc/apt/sources.list
Types: deb
URIs: http://deb.debian.org/debian/
Suites: sid
Components: main
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg
```

***`3. runflare.com Sid Debian Sid`***
```bash
# Modernized from /etc/apt/sources.list
Types: deb
URIs: http://mirror-linux.runflare.com/debian/
Suites: sid
Components: main contrib non-free non-free-firmware
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg
```

***`4. ito.gov.ir Sid Debian Sid`***
```bash
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://archive.ito.gov.ir/debian/
Suites: sid
Components: main contrib non-free non-free-firmware
Signed-By:
```

***[🔝 Table Of Contents](#table-of-contents)***

---


7) #### Debian Forky

***`1. ito.gov.ir Debian Forky`***
```bash
# forky
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://archive.ito.gov.ir/debian/
Suites: forky
Components: main contrib non-free non-free-firmware
Signed-By: 

# forky-updates
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://archive.ito.gov.ir/debian/
Suites: forky-updates
Components: main contrib non-free non-free-firmware
Signed-By: 

# forky-proposed-updates
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://archive.ito.gov.ir/debian/
Suites: forky-proposed-updates
Components: main contrib non-free non-free-firmware
Signed-By: 

# forky-backports
# Modernized from /etc/apt/sources.list
Types: deb
URIs: https://archive.ito.gov.ir/debian/
Suites: forky-backports
Components: main contrib non-free non-free-firmware
Signed-By: 
```

***[🔝 Table Of Contents](#table-of-contents)***

---