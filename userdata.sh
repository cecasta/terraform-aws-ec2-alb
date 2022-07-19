#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
sudo chown ec2-user:ec2-user /var/www/html/index.html
echo 'DevOps Crash Course - Instance ' >> /var/www/html/index.html
#sudo sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
#sudo systemctl restart sshd