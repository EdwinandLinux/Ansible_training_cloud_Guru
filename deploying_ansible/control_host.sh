# Install Ansible on the control host (RHEL9)

sudo yum install ansible-core -y
# Check Ansible  versiom
ansible --version

# Create an ansible user on the control host and 
# set a password you can remember
sudo adduser ansible
passwd ansible

# Configure a pre-shared key for Ansible that allows the user to log in 
# from control to workstation without a password.
sudo ssh-keygen
sudo ssh-copy-id ansible@workstation