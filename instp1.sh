#!/bin/bash

apt update

###################################
#### Install updated Debian Version
###################################

apt upgrade -y 
apt install plocate sntp ntpdate software-properties-common -y 
hostnamectl set-hostname $2

##############################
#### Change MariaDB repository
##############################
#apt-key adv --fetch-keys 'https://mariadb.org/mariadb_release_signing_key.asc'
#add-apt-repository 'deb [arch=ppc64el,amd64,arm64] https://mirror.mva-n.net/mariadb/repo/10.5/ubuntu focal main' 

apt update 
#passwd root
echo "root:$1" | chpasswd   # set root password -

###################################
#### Add gat (replacement for cat)
###################################

cd /usr/local/bin
wget https://github.com/koki-develop/gat/releases/download/v0.8.2/gat_Linux_x86_64.tar.gz
tar -xvzf gat_Linux_arm64.tar.gz
chown root:root gat
chmod +x gat
rm gat_Linux_arm64.tar.gz
rm LICENSE
rm README.md



##############################
#### Install Virtualmin
##############################

#wget -O virtualmin-install-pre-release.sh https://raw.githubusercontent.com/virtualmin/virtualmin-install/d7fcb4ea35b5545417a38b7af4c4d97dbe45d591/virtualmin-install.sh
wget -O virtualmin-install.sh https://raw.githubusercontent.com/virtualmin/virtualmin-install/master/virtualmin-install.sh
#sh virtualmin-install-pre-release.sh -y
sh virtualmin-install.sh -y
rm virtualmin-install.sh
reboot
