#!/bin/bash
set -x
cd /etc/yum.repos.d/
mkdir -p .repo.bak
mv ./*.repo .repo.bak
curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
curl -o  /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo
rpm -Uvh http://mirror.ghettoforge.org/distributions/gf/gf-release-latest.gf.el7.noarch.rpm
rpm --import http://mirror.ghettoforge.org/distributions/gf/RPM-GPG-KEY-gf.el7
yum makecache
yum -y remove vim-minimal vim-common vim-enhanced
yum -y --enablerepo=gf-plus install vim-enhanced
yum install -y  git  zsh make wget ack
echo "install oh-my-sh"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
echo "install zsh plugin zsh-autosuggestion"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "install zsh plugin zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "install zsh plugin z"
git clone https://github.com/rupa/z.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/z
echo "install fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

cp .zshrc ~/.zshrc
