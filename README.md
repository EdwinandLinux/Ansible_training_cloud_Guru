# Deploying Ansible

**Requirements:** 

              Install two servers using VM (VirtualBox or RHEL9)

              Make sure your system has Python installled

 **Step I:** 
## Install Ansible on the control host

 **Step II:** 
## Create an ansible user on both the control host and workstation host being sure to set a password you can remember

**Step III:** 
## Configure a pre-shared key for Ansible that allows the user to log in from control to workstation without a password

**Step IV:** 
## Configure the Ansible user on the workstation host so that Ansible may   sudo without a password

**Step V:** 
## Create a simple inventory in /home/ansible/inventory consisting of only the workstation host

**Step VI:**
## Write an Ansible playbook in /home/ansible/git-setup.yml on the control node that installs git on workstation then execute the playbook