#!/usr/zsh
# install htop
yum install -y htop atop
# install ncdu 显示目录大小
yum install -y ncdu figlet

# install neofetch a tool display host info
curl -o /etc/yum.repos.d/konimex-neofetch-epel-7.repo https://copr.fedorainfracloud.org/coprs/konimex/neofetch/repo/epel-7/konimex-neofetch-epel-7.repo
yum install -y  neofetch
# install dev tools
yum install gcc-c++ clang -y
yum install centos-release-scl -y
yum install devtoolset-8 -y
scl enable devtoolset-8 bash
