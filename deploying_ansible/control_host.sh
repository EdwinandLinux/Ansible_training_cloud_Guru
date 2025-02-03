# Install Ansible on the control host (RHEL9)

sudo yum install ansible-core -y
# Check Ansible  versiom
ansible --version

# Create an ansible user on the control host and 
# set a password you can remember
sudo adduser ansible
passwd ansible
