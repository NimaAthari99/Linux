### Debian OpenVPN3 Commands

| Command                                                                                                   | What it does                      
|-----------------------------------------------------------------------------------------------------------|-----------------------------------|
| `openvpn3 config-import --config /PATH_TO_FILE/OVPN_CONFIG.ovpn --name NEW_CONFIG_FILE --persistent`      | New Config File                   |
| `openvpn3 config-remove  --config NEW_CONFIG_FILE`                                                        | Remove Config File                |
| `openvpn3 config-manage --disconnect --config NEW_CONFIG_FILE`                                            | Disconnect From Config File       |
| `openvpn3 config-manage --show --config NEW_CONFIG_FILE`                                                  | Show Config File                  |
| `openvpn3 configs-list -v`                                                                                | Show Config File Detailed         |
| `openvpn3 session-start --config /PATH_TO_FILE/OVPN_CONFIG.ovpn`                                          | Connect OpenVPN3 File             |
| `openvpn3 sessions-list`                                                                                  | Show OpenVPN3 Sessions List       |
| `openvpn3 session-manage --disconnect --path=OVPN_CONFIG_FILE`                                            | Disconnect From OpenVPN File      |

