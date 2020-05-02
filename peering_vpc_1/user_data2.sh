#!/bin/bash
sudo yum install mysql mysql-server -y
sudo service mysqld start 
sudo chkconfig mysqld on