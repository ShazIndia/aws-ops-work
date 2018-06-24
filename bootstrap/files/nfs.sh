#!/bin/bash
#Bootstarp script using chef recipes


echo "Checking for directory"
echo
if [ -d '/shared/apps-1' ] && [ -d '/shared/apps-2' ] && [ -d '/shared/apps-3' ] && [ -d '/shared/home' ]; then
    echo "Required Directory apps, data, home, lucene exists."

else
    sudo mkdir -p /shared/apps /shared/data /shared/home /shared/lucene
fi

echo
echo "List all directory"
echo
ls -l /shared

#Installing LVM
sudo apt-get -y install lvm2


#Install NFS server 
sudo apt-get -y install nfs-kernel-server


#restart the nfs  
sudo service nfs-kernel-server start
