#!/bin/bash
#Bootstarp script for installing and configuring  lvm and nfs for data filler and nfsfiller


echo "Checking for directory"
echo
if [ -d '/shared/apps' ] && [ -d '/shared/data' ] && [ -d '/shared/home' ] && [ -d '/shared/lucene' ]; then
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


#edit /etc/export 
sudo cat >/etc/export <<EOL
/mnt01/exports/data *(rw,no_root_squash)
/mnt02/exports/home *(rw,no_root_squash)
/mnt02/exports/lucene *(rw,no_root_squash)
/mnt02/exports/apps *(rw,no_root_squash)
EOL

#configure exports 
sudo exportfs -a

#restart the nfs  
sudo service nfs-kernel-server start
