#!/bin/bash
apt update -y
apt install nginx -y
echo "Infrastructure Provisioned via Terraform & GitHub Actions" > /var/www/html/index.html

