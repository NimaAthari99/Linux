### Proxy configuration on docker daemon 

**Daemon configuration** 
For using proxy by changing "daemon.jason" file of dacker in "/etc/doccker/daemon.jason":
```bash 
{
    "proxies": { 
    "http-proxy": "http://proxy.example.com:3128", 
    "https-proxy": "http://proxy.example.com:3129", 
    "no-proxy": "*.test.example.com,.example.org,127.0.0.0/8" } 
} 
``` 

Restart the daemon: 
```bash 
sudo systemctl restart docker 
``` 

**Systemd Unit File** 
If you're running the Docker daemon as a systemd service, you can create a systemd drop-in file that sets the variables for the docker service; Then restart docker:
 ```bash 
<SOF>
[Service] 
Environment="HTTP_PROXY=http://proxy.example.com:3128" 
Environment="HTTPS_PROXY=http://proxy.example.com:3129" 
Environment="NO_PROXY=localhost,127.0.0.1,docker-registry.example.com,.corp" 
<EOF>

sudo systemctl daemon-reload 
sudo systemctl restart docker 
``` 

**Verify that the configuration has been loaded and matches the changes you made, for example:** 
```bash 
sudo systemctl show --property=Environment docker 
``` 