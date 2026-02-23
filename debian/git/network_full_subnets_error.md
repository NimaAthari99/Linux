# Docker Error: "all predefined address pools have been fully subnetted"

## Problem

When trying to create a new Docker user-defined bridge network:

```bash
docker network create app_net
```

I received this error:

```
Error response from daemon: all predefined address pools have been fully subnetted
```

This usually means Docker has run out of available subnets in its **default private address pools** (typically pieces of `172.17.0.0/12`).

## Current network interfaces (ip -br a output)

```bash
lo               UNKNOWN        127.0.0.1/8 ::1/128 
enp108s0         DOWN           
enx207bd265098c  DOWN           
wlo1             DOWN           
br-74685e7df806  UP             172.17.0.1/16 fe80::50b2:fff:fe0b:5e7d/64 
br-dec6aafb6554  UP             172.19.0.1/16 fe80::c05c:fff:fecb:919c/64 
docker0          DOWN           10.0.0.1/24 
vethc73be04@if2  UP             fe80::8823:2aff:fefb:4d19/64 
veth62b2799@if3  UP             fe80::e47a:36ff:feae:6f3b/64 
vboxnet0         DOWN           
vethd676dbf@if2  UP             fe80::bc30:eeff:fe1c:8596/64 
veth8b4ec85@if2  UP             fe80::448:86ff:fe06:43dd/64 
enx1e36bb973b44  UP             172.20.10.5/28 fe80::fef5:6eb1:ac21:6f2a/64 
```

You can already see at least two large `/16` Docker bridge networks in use:

- `172.17.0.0/16`
- `172.19.0.0/16`

Many other networks (probably created by docker-compose projects) are likely also present but not visible in this filtered `ip a` output.

## Solutions (in recommended order)

### 1. Quick fix – Remove unused networks (most common & recommended first step)

```bash
# See how many networks exist
docker network ls

# Remove all networks that are not currently used by any container
docker network prune -f
```

After pruning, try again:

```bash
docker network create app_net
```

### 2. Manually delete old / project-specific networks

If you have many old docker-compose projects:

```bash
docker network ls

# Remove specific unused ones (example)
docker network rm old-project_default
docker network rm frontend_backend
```

Or (careful – removes everything not in use):

```bash
docker network prune
```

### 3. Recommended long-term solution – Customize Docker's default address pools

Edit (or create) the Docker daemon configuration:

```bash
sudo nano /etc/docker/daemon.json
```

Add / replace with something like this:

```json
{
  "default-address-pools": [
    {
      "base": "172.25.0.0/16",
      "size": 24
    },
    {
      "base": "172.26.0.0/16",
      "size": 24
    },
    {
      "base": "172.27.0.0/16",
      "size": 24
    },
    {
      "base": "172.28.0.0/16",
      "size": 24
    },
    {
      "base": "172.29.0.0/16",
      "size": 24
    }
  ]
}
```

- `base`: parent network block
- `size: 24`: each new network gets a `/24` subnet (256 addresses)

Apply changes:

```bash
sudo systemctl restart docker

# Verify
docker info --format '{{json .DefaultAddressPools}}'
```

Now Docker can create hundreds or thousands more networks automatically.

### 4. Quick one-time workaround – Manually specify a free subnet

If you just need one network right now:

```bash
# Option A – inside 172.x range
docker network create --subnet=172.23.77.0/24 --gateway=172.23.77.1 app_net

# Option B – use 10.x range
docker network create --subnet=10.177.0.0/24 app_net

# Option C – use 192.168.x range (less common for Docker)
docker network create --subnet=192.168.77.0/24 app_net
```