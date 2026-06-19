## Debian Basic Commands

| Command                                                                           | What it does                                      | When to use it                                                |
|-----------------------------------------------------------------------------------|---------------------------------------------------|---------------------------------------------------------------|
| `cp /home/USERNAME/.bashrc /root/`                                                | Copy bash configs in root user                    | **Allways** - It's not critical but make me work easier.      |
| `echo "HELLO WORLD!" >> helloworld.txt`                                           | Append "HELLO WORLD!" to hellowold.txt file.      | **Sometimes**                                                 |
| `echo "linux ALL=(ALL) NOPASSWD:ALL" PIPELINE sudo tee /etc/sudoers.d/linux`      | Sudo access without pasword                       | **Never** — Use with safty                                    |
| `sysctl -a`                                                                       | Shows kernel's parameters                         | **Rarely**                                                    |
| `sysctl --system`                                                                 | Save your changes                                 |                                                               |
| `lsb_release -cs`                                                                 | Check your distro                                 | **Rarely**      