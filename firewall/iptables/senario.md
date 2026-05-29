# Iptabels

## Iptables scenario 1:

Setup a server with these requirements:

  - Allow SSH (port 22) only from a specific IP address.
  - Allow HTTP (port 80) and HTTPS (port 443) traffic from any IP address.
  - Block all other incoming traffic.
  - Log any dropped packets for troubleshooting.


Steps
  - Flushing existing rules: Clear all existing rules to start with a clean slate.
  - Setting default policies: Define default policies to drop incoming and forwarding traffic.
  - Allowing specific traffic: Add rules to allow specific traffic as per the requirements.
  - Logging dropped packets: Add rules to log dropped packets.

Flushing Existing Rules
```bash
# Flush all existing rules
sudo iptables -F
sudo iptables -t nat -F
sudo iptables -t mangle -F

# Delete all user-defined chains
sudo iptables -X
sudo iptables -t nat -X
sudo iptables -t mangle -X
```

Setting Default Policies
```bash
# Set default policies to drop incoming and forward traffic, but allow outgoing traffic
sudo iptables -P INPUT DROP
sudo iptables -P FORWARD DROP
sudo iptables -P OUTPUT ACCEPT
```

Allowing Specific Traffic
```bash
# Allow loopback interface traffic (localhost)
sudo iptables -A INPUT -i lo -j ACCEPT

# Allow established and related incoming connections
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

# Allow incoming SSH from a specific IP
# Allow incoming HTTP (port 80) traffic
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT

# Allow incoming HTTPS (port 443) traffic
sudo iptables -A INPUT -p tcp --dport 443 -j ACCEPT
```

Logging Dropped Packets
```bash
# Log dropped packets
sudo iptables -A INPUT -m limit --limit 5/min -j LOG --log-prefix "iptables INPUT drop: " --log-level 4
```

Install rsyslog service
```bash
sudo apt update
sudo apt install -y rsyslog
sudo tail -f /var/log/syslog
```

---

## Iptables scenario 2:

Sure! Let's dive into a more advanced iptables scenario. This will cover multiple aspects, including NAT (Network Address Translation), port forwarding, rate limiting, and stateful packet inspection.

**Scenario:** Assume you have a Linux server acting as a router/firewall for a small network. The server has two network interfaces:

  - eth0 connected to the internet.
  - eth1 connected to the internal network (e.g., 192.168.1.0/24).

**Requirements:**

  - Enable NAT to allow internal network devices to access the internet.
  - Set up port forwarding to direct HTTP traffic from the internet to an internal web server (192.168.56.101).
  - Implement rate limiting for SSH connections to mitigate brute-force attacks.
  - Allow established and related connections, but block new incoming connections except for specific services.

**Steps:**
  - Enable IP forwarding.
  - Set up NAT for internet access.
  - Configure port forwarding.
  - Implement rate limiting for SSH.
  - Allow specific incoming services and block others.

**Commands:**
1. Enable IP Forwarding

Edit the /etc/sysctl.conf file to enable IP forwarding:

```bash
sudo echo "net.ipv4.ip_forward = 1" >> /etc/sysctl.conf
sudo sysctl -p
```

Alternatively, enable it temporarily:

```bash
sudo sysctl -w net.ipv4.ip_forward=1
```

2. Set Up NAT for Internet Access
```bash
# Enable NAT for outbound traffic on eth0
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
```

3. Configure Port Forwarding

```bash
# Forward incoming HTTP traffic on eth0 to internal web server 192.168.1.10
sudo iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j DNAT --to-destination 192.168.1.10:80

# Allow forwarded traffic to be routed correctly
sudo iptables -A FORWARD -p tcp -d 192.168.1.10 --dport 80 -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT
```

4. Implement Rate Limiting for SSH

```bash
# Limit SSH connections to 3 per minute with a burst of 3
sudo iptables -A INPUT -p tcp --dport 22 -m state --state NEW -m recent --set
sudo iptables -A INPUT -p tcp --dport 22 -m state --state NEW -m recent --update --seconds 60 --hitcount 3 -j DROP
```

5. Allow Specific Incoming Services and Block Others

```bash
# Allow loopback interface traffic (localhost)
sudo iptables -A INPUT -i lo -j ACCEPT

# Allow established and related incoming connections
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

# Allow SSH from a specific IP range
sudo iptables -A INPUT -p tcp -s 192.168.1.0/24 --dport 22 -j ACCEPT

# Allow HTTP/HTTPS from anywhere
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 443 -j ACCEPT

# Drop all other incoming traffic
sudo iptables -A INPUT -j DROP
```


## [SSH port knocking setup using `knockd` and `iptables`](SSH-port-knocking.md)
