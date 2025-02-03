# Install Ansible on the control host (RHEL9)

sudo yum install ansible-core -y
# Check Ansible  versiom
ansible --version

# Create an ansible user on the control host and 
# set a password you can remember
sudo adduser ansible
sudo passwd ansible

# Configure a pre-shared key for Ansible that allows the user to log in 
# from control to workstation without a password.
sudo su - ansible
ssh-keygen
ssh-copy-id workstation

# Create a simple inventory in /home/ansible/inventory 
# consisting of only the workstation host
sudo su - ansible

pwd # /home/ansible
sudo vim inventory # add this: workstation