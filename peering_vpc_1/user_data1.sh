#!/bin/bash
sudo yum install httpd -y
sudo systemctl enable httpd 
sudo systemctl start httpd
echo "<Task 2 Completed>" | sudo tee /var/www/html/index.html