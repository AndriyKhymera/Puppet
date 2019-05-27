#!/bin/bash

setenforce 0
rpm -Uvh https://yum.puppet.com/puppet6-release-el-7.noarch.rpm

yum install puppet-agent -y
puppet config set certname