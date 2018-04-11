#!/bin/sh
#JDW docker setup
#set up calm user
adduser nucalm
echo 'nucalm:nutanix/4u' | chpasswd
gpasswd -a nucalm wheel

#install docker
sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

yum -y update xfsprogs
sudo yum -y install docker-ce

sudo systemctl start docker
#sudo docker run hello-world
