#!/usr/bin/sh
# to be root
set -e

repo_dir=/etc/yum.repos.d
backup_dir=/etc/yum.repos.d/repo.bak

function install_repo() {
mkdir -p $backup_dir
list=`find $repo_dir -name "*.repo"` 
for f in $list
do 
 echo $f
 mv $f  $backup_dir
done

curl -o /etc/yum.repos.d/CentOS-Base.repo https://mirrors.aliyun.com/repo/Centos-7.repo
sed -i -e '/mirrors.cloud.aliyuncs.com/d' -e '/mirrors.aliyuncs.com/d' /etc/yum.repos.d/CentOS-Base.repo
curl -o /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo
yum makecache
}

install_repo
