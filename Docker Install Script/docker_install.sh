#!/bin/sh
#JDW docker setup
#set up calm user
adduser nucalm
passwd nucalm
gpasswd -a nucalm wheel

#install docker
sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

yum update xfsprogs
$ sudo yum install docker-ce

sudo yum install <FULLY-QUALIFIED-PACKAGE-NAME>

sudo systemctl start docker
sudo docker run hello-world
