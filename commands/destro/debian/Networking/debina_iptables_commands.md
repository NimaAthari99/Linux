## IPTables Commands

| Command                           | What it does                      | When to use it        |
|-----------------------------------|-----------------------------------|-----------------------|
| `iptables -A --line-number`       | Append rule to line number.       |                       |
| `iptables -D`                     | Delete rule.                      |                       |
| `iptables -L -v -n`               |                                   |                       |
| `iptables -nL`                    |                                   |                       |

### Flush Rules
| Command                           | What it does                      | When to use it        |
|-----------------------------------|-----------------------------------|-----------------------|
| `iptables -F`                     | Flush Rules                       |                       |
| `iptables -t nat -L -n -v`        | Flush Rules                       |                       |
| `iptables -t mangle -L -n -v`     | Flush Rules                       |                       |
| `iptables -t nat -F`              | Flush Rules                       |                       |
| `iptables -t mangle -F`           | Flush Rules                       |                       |
| `iptables -X`                     | Flush Rules                       |                       |
| `iptables -t nat -X`              | Flush Rules                       |                       |
| `iptables -t mangle -X`           | Flush Rules                       |                       |


### Reset Defaults
| Command                           | What it does                      | When to use it        |
|-----------------------------------|-----------------------------------|-----------------------|
| `iptables -P INPUT ACCEPT`        | Reset Defaults                    |                       |
| `iptables -P OUTPUT ACCEPT`       | Reset Defaults                    |                       |
| `iptables -P FORWARD ACCEPT`      | Reset Defaults                    |                       |


<!-- Default Policies For Mor Security -->
sudo iptables -P INPUT DROP
sudo iptables -P OUTPUT ACCEPT
sudo iptables -P FORWARD DROP

<!-- Accept Loopbak -->
sudo iptables -A INPUT -i lo -j ACCEPT

<!-- Accept Current Established Connections -->
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

<!-- Accept SSH Port -->
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT

<!-- Accept HTTP Port -->
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT

<!-- Accept HTTPS Port -->
sudo iptables -A INPUT -p tcp --dport 443 -j ACCEPT

<!-- Accept Some Ports -->
sudo iptables -A INPUT -p tcp -m multiport --dports 22,80,443,8080 -j ACCEPT

<!-- Block Some IPs -->
sudo iptables -A INPUT -s 203.0.113.45 -j DROP
sudo iptables -A INPUT -s 203.0.113.0/24 -j DROP

<!-- Limit Connections -->
sudo iptables -A INPUT -p tcp --dport 22 -m state --state NEW -m limit --limit 3/min --limit-burst 5 -j ACCEPT

<!-- NAT If System Is Edge Router -->
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

<!-- Portforward Port 80 To a Server -->
sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to-destination 192.168.1.10:80
sudo iptables -A FORWARD -p tcp -d 192.168.1.10 --dport 80 -j ACCEPT

<!-- Logging -->
sudo iptables -A INPUT -j LOG --log-prefix "IPTables-Dropped: " --log-level 4

<!-- Logs Directory -->
/var/log/kern.log
یا journalctl -k

<!-- Save Changes -->
sudo netfilter-persistent save

<!-- Find Rull Number -->
sudo iptables -L INPUT --line-numbers -n -v
sudo iptables -t nat -L PREROUTING --line-numbers -n -v

<!-- Replace A Rule With Another -->
sudo iptables -R INPUT 2 -s 203.0.113.45 -j REJECT
iptables -R <CHAIN> <RULE_NUMBER> <NEW_RULE>