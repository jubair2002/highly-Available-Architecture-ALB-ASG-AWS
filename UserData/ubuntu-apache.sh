#!/bin/bash
apt update -y
apt install -y apache2
systemctl start apache2
systemctl enable apache2
echo "<h1>ALB + Auto Scaling Web Server</h1><h2>Hostname: $(hostname)</h2>" > /var/www/html/index.html