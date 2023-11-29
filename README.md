# dhbw-smarthome


## Ansible
1. On earch server there needs to be a user with sudo rights - for bwcloud by default this is the user "centos" who is a member of the wheel group with respective rights
1. Configure each server so ansible will work:
```

groupadd wheel
usermod -aG wheel al_krug64
sudo apt update
sudo apt uprade
sudo apt install -y python3
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python3 get-pip.py
rm get-pip.py

```

Google Cloud specific tasks are adding the group wheel and adding the user al_krug64 to the wheel group to enable sudoers rights outside of the cloud console

Here is the short version:
```
cd /etc/yum.repos.d/; sudo sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*; sudo sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*; cd; sudo yum install -y python3; curl https://bootstrap.pypa.io/pip/3.6/get-pip.py -o get-pip.py; python3 get-pip.py; rm get-pip.py
```


## Set up the server
ansible-playbook setup-cloud-server.yaml
