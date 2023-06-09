#!/bin/bash

wget https://raw.githubusercontent.com/fdmgit/install-debian-11/main/bashrc.ini
wget https://raw.githubusercontent.com/fdmgit/install-debian-11/main/instubp1.sh
wget https://raw.githubusercontent.com/fdmgit/install-debian-11/main/instubp2.sh

cp bashrc.ini /root/.bashrc
rm /root/bashrc.ini

chmod +x /root/instubp1.sh
chmod +x /root/instubp2.sh
