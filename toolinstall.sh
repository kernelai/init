#!/usr/zsh
# install htop
yum install -y htop
# install ncdu 显示目录大小
yum install -y ncdu

# install neofetch a tool display host info
curl -o /etc/yum.repos.d/konimex-neofetch-epel-7.repo https://copr.fedorainfracloud.org/coprs/konimex/neofetch/repo/epel-7/konimex-neofetch-epel-7.repo
yum install neofetch
