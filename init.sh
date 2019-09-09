#!/bin/bash
set -x
cd /etc/yum.repos.d/
mkdir -p .repo.bak
mv ./*.repo .repo.bak 
curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
curl -o  /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo
yum makecache
yum install -y  git vim zsh make wget
echo "install oh-my-sh"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
source ~/.zshrc  
echo "export LANG=en_US.UTF-8" >> ~/.zshrc
echo "export LC_ALL=en_US.UTF-8" >> ~/.zshrc


