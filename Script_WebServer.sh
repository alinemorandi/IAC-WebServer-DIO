#!/bin/bash

echo "Upgrade System"
apt-get update
apt-get upgrade -y

echo "Install Apache"
apt-get install apache2 -y

echo "Install Unzip"
apt-get install unzip -y

echo "Download app DIO"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/