#!/usr/bin/sh
echo "/lib/modprobe.d/dist-blacklist.conf"
echo "#blacklist nvidiafb"
echo "blacklist nouveau"
echo "options nouveau modeset=0"
mv /boot/initramfs-$(uname -r).img /boot/initramfs-$(uname -r)-nouveau.img  
dracut /boot/initramfs-$(uname -r).img $(uname -r)  
systemctl set-default multi-user.target
