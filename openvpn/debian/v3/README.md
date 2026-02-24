# OpenVPN3

## Connecting It
For using openvpn3 on debian:
```bash
openvpn3 config-import --config Brandon.ovpn --name <MY_CONFIG_NAME> --persistent 
```

Note: The <MY_CONFIG_NAME> (configuration file) is an "alias name" associated with your connection profile (.ovpn file).

For listing all cnfigs:
```bash
openvpn3 configs-list
```

For connecting your config:
```bash
openvpn3 session-start --config <MY_CONFIG_NAME>
```

For disconnecting your sessin using it's alias:
```bash
openvpn3 session-manage --config <MY_CONFIG_NAME> --disconnect
```

# List of commands Al-In-One 
---
layout: docs
page_title: Vagrantfile
description: |-
  The primary function of the Vagrantfile is to describe the type
  of machine required for a project, and how to configure and
  provision these machines. Vagrantfiles are called Vagrantfiles because
  the actual literal filename for the file is "Vagrantfile".
# START AUTO GENERATED METADATA, DO NOT EDIT
created_at: 2025-11-20T11:55:22-05:00
last_modified: 2025-11-20T11:55:22-05:00
# END AUTO GENERATED METADATA
---