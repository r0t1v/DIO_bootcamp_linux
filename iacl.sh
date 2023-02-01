#!bin/bash

echo "Creating directories..."

mkdir /public
mkdir /admin

echo "Creating users group..."

groupadd GRP_ADM

echo "Creating users..."

useradd tristan -m -s /bin/bash -p $(openssl passwd -crytp pass123) -G GRP_ADM
useradd spike -m -s /bin/bash -p $(openssl passwd -crytp pass123) -G GRP_ADM

echo "Especifying permissions..."

chown root:GRP_ADM /admin

chmod 777 /public
chmod 770 /admin

echo "End!"