# Gatherfact
## Type of command
```bash
ansible *[all/group/host] -i *host_file[inventory/hosts.yml] -m setup -a "filter=*ansible_os_family"
```

***Example:***
```bash
ansible nginx_servers -i inventory/hosts.yml -m setup -a "filter=ansible_os_family"
```
It will shows operating system type of servers in nginx_servers group.

## Some Filters:

| Filter                                          | Description                                        |
|-------------------------------------------------|----------------------------------------------------|
| ansible_all_ipv4_addresses                      | Shows IP Addresses                                 |
| ansible_hostname                                | Shows Hostname                                     |
| ansible_os_family                               | Shows System OS                                    |
| ansible_mounts                                  | Mount Points                                       |