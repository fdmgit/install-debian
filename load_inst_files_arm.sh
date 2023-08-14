#!/bin/bash

wget https://raw.githubusercontent.com/fdmgit/install-debian-11/main/bashrc.ini
wget https://raw.githubusercontent.com/fdmgit/install-debian-11/main/instp1arm.sh
wget https://raw.githubusercontent.com/fdmgit/install-debian-11/main/instp2arm.sh

cp bashrc.ini /root/.bashrc
rm /root/bashrc.ini

chmod +x /root/instp1arm.sh
chmod +x /root/instp2arm.sh

###################################
#### Setup root key file
###################################

if [ -d /root/.ssh ]; then 
    echo ".ssh exists"
else
    mkdir /root/.ssh
fi

cd /root/.ssh
wget https://raw.githubusercontent.com/fdmgit/virtualmin/main/authorized_keys

reboot
