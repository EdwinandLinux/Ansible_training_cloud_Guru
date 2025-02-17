# Ansible Setup on wmware with RHEL

## Step -0: Download vmware and use RHEL ISO image

1 - Control node

1 - Managed node

## Step -1: Apply the below commands on those 2 nodes

#### a - Create ansible user

```
sudo useradd ansible
sudo passwd ansible
```

#### b - Configure  ansible user in the sudoers file

su -
visudo
```
ansible ALL=(ALL)    NOPASSWD: ALL
```
exit

## Step -2: Install Ansible in Controle  Node

#### a - Switch to   ansible user 
```
su - ansible
```

#### b - Install Ansible

```
sudo yum install ansible-core -y
```
NB: Make sure Python is aleady installed

#### c - Generate  SSH key in the Controle Node and Copy it into  the Managed Node 
```
ssh-keygen
ssh-copy-id ansible@managed_node_ip
```

#### d - Update the inventory file with the managed node IP
```
sudo vim /etc/ansible/hosts
```
[web]
managed_node_ip

#### e - Test connectivity
```
ping all -m ping
`` 
