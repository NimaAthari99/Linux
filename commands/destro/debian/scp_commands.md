# Some Debian Commands

## Table Of Contents
- [SCP](#scp-commands)

---

## SCP Commands

| Command                                                                           | What it does                                      | When to use it                                                |
|-----------------------------------------------------------------------------------|---------------------------------------------------|---------------------------------------------------------------|
| `scp -P PORT_NIMBER -r /PATH_TO_FILE  USER@DESTINATION_IP_ADDRESS:/DESTINATION_PATH`        | Use SSH Key                                 | **Rarely**                                                    |
| `scp -P PORT_NIMBER -r -o IdentitiesOnly=yes /PATH_TO_FILE  USER@DESTINATION_IP_ADDRESS:/DESTINATION_PATH`        | IPnteractively use password                                 | **Rarely**                                                    |

sudo code . --user-data-dir --no-sandbox

***[🔝 Table Of Contents](#table-of-contents)***

---