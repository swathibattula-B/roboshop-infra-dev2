#!/bin/bash

component=$1
environment=$2
app_version=$3
dnf install ansible -y

cd /home/ec2-user
git clone https://github.com/swathibattula-B/ansible-roboshop-roles-tf1.git

cd ansible-roboshop-roles-tf1
git pull
ansible-playbook -e component=$component -e env=$environment -e app_version=$app_version roboshop.yaml