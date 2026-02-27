## Installation
1. install ruby environment     <!-- First search for it if its insstalled using "rubby -v" -->
2. clone repo                   <!-- git clone https://github.com/chef/bento.git -->
3. cd bento
4. gem build bento.gemspec
5. gem install bento-*.gem

# Errors
If error **"WARNING: You don't have /home/nimaathari/.local/share/gem/ruby/3.3.0/bin in your PATH, gem executables (bento) will not run."** shown, then execut:
```bash
export PATH="$HOME/.local/share/gem/ruby/3.3.0/bin:$PATH"
source ~/.bashrc
bento --version
    OR
which bento
```
Must show you version of bento installed on your system. If not:
```bash
cd bento
echo 'alias bento="ruby -I$(pwd)/lib $(pwd)/bin/bento"' >> ~/.bashrc
source ~/.bashrc
bento version
```
Now must show you version of bento installed.

# Packer installation
Update repos and packages installed:
```bash
sudo apt update && sudo apt upgrade -y
```
Packer installation:
```bash
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt install packer -y
```

Install virtulabox (or any other suit):
```bash
sudo apt install virtualbox virtualbox-ext-pack -y
```

Add your user to **"vboxusers"** group:
```bash
sudo usermod -aG vboxusers $USER
sudo reboot
```

Check installtion to be successful:
```bash
packer version
vboxmanage --version
bento list
```