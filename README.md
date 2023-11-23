# dhbw-smarthome


## Ansible
1. On earch server there needs to be a user with sudo rights - for bwcloud by default this is the user "centos" who is a member of the wheel group with respective rights
1. Configure each server so ansible will work:
```
cd /etc/yum.repos.d/ 
sudo sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-* 
sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-* 
cd  
Sudo yum install -y python3  
curl https://bootstrap.pypa.io/pip/3.6/get-pip.py -o get-pip.py 
python3 get-pip.py 
rm get-pip.py 
```
Here is the short version:
```
cd /etc/yum.repos.d/; sudo sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*; sudo sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*; cd; sudo yum install -y python3; curl https://bootstrap.pypa.io/pip/3.6/get-pip.py -o get-pip.py; python3 get-pip.py; rm get-pip.py
```


## Set up the server
ansible-playbook setup-cloud-server.yaml
