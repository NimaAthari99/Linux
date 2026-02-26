# WEB-DB-Practice
Setting up 2 nginx servers & 2 apache servers & 1 sql server vagrant machines using ansible and config them by ansible configuration file path:"https://github.com/NimaAthari99/Linux/blob/main/ansible/projects/Ansible-VM/Vagrantfile" . Configuration instruction is available in my github in "https://github.com/NimaAthari99/Linux/tree/main/ansible/projects/web-db-practice"

# Inventory Description
## Machines details
File is configured and detailed in "https://github.com/NimaAthari99/Linux/blob/main/ansible/projects/web-db-practice/inventory/hosts.yml" .

As it's clarify, there are 3 groups nginx_servers, apache_servers & sql_servers. We have 5 machines which just two of them are going to get up. 

## Variables details
### Group variables
There are some variables in project. "packages" which is located in "https://github.com/NimaAthari99/Linux/blob/main/ansible/projects/web-db-practice/inventory/group_vars/all/packages.yml" , are used for all 3 machine groups. Have 2  other variables called "certs" & "domain" located in "https://github.com/NimaAthari99/Linux/tree/main/ansible/projects/web-db-practice/inventory/group_vars/web_servers" . 

## Host variables
Here is variables for all hosts based on each. For example we have name of each machine in hosts.yml .

