#!/usr/bin/sh
rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org 
rpm -Uvh http://www.elrepo.org/elrepo-release-7.0-2.el7.elrepo.noarch.rpm 
yum --enablerepo=elrepo-kernel install kernel-ml-devel kernel-ml -y 
grub2-mkconfig --output=/boot/grub2/grub.cfg
cat /boot/grub2/grub.cfg |grep menuentry 

echo "exec CMD and reboot"
echo "grub2-set-default 'CentOS Linux (4.8.5-1.el7.elrepo.x86_64) 7 (Core)' "
