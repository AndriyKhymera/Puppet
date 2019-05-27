#!/bin/bash

setenforce 0
rpm -Uvh https://yum.puppet.com/puppet6-release-el-7.noarch.rpm

yum install puppetserver -y

puppetserver ca setup

systemctl start puppetserver
systemctl enable puppetserver

