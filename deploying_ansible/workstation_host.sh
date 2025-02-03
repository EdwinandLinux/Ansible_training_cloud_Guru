# Create an ansible user on the workstation  host and 
# set a password you can remember
sudo adduser ansible
sudo passwd ansible

# Configure the Ansible user on the workstation host 
# so that Ansible may   sudo without a password
sudo su -
visudo
ansible ALL=(ALL)     NOPASSWD: ALL # add this line in the visudo file