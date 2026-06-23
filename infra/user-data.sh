#!/bin/bash

dnf update -y
dnf install -y nginx git

systemctl enable nginx
systemctl start nginx

cd /home/ec2-user

git clone https://github.com/tanay0505/Zero-Key-Deploy.git

cp /home/ec2-user/Zero-Key-Deploy/app/index.html /usr/share/nginx/html/index.html

systemctl restart nginx