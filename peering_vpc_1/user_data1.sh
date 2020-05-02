#!/bin/bash
sudo yum install httpd -y
sudo systemctl enable httpd 
sudo systemctl start httpd
echo "<html><h1>vpc_vpc_peering Task by Adnan</h1></html>" | sudo tee /var/www/html/index.html