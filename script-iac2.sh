#!bin/bash

echo "Updating server data..."
apt-get update
apt-get upgrade
apt-get install apache2 -y
apt-get install unzip -y

echo "Downloading e copying application files..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "End!"