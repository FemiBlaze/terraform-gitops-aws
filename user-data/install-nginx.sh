#!/bin/bash
apt update -y
apt install nginx -y
systemctl start nginx
systemctl enable nginx

echo "Infrastructure Provisioned via Terraform & GitHub Actions" > /var/www/html/index.html

