# Launch Multi-VM using Ansible

# environment.yml file will deploy a New resource grup, VN, Network Interface, 2 Public IP, 2 Disk, 2 VM's.

ansible-playbook environment.yml --extra-vars "resource_group=<option>"
  
# Get the IP address from output and add in ansible(/etc/ansible/host) host manually.and add the user authendication details in Hosts file.then run 

  ansible-playbook monitor.yml --> get the Memory,CPU,Disk,Network Usage details.
  
# once test done 
 az group delete --name <Resource-group>


# Ansible Authendication Details Example. /etc/ansible/hosts
[env]
40.x.x.x
40.x.x.x
[env:vars]
ansible_user = <host-username>
ansible_port = 22
ansible_password = <host-postword>
