#!bin/bash
sudo apt-get update
sudo apt-get -y install postgresql
sudo service postgresql start
sudo useradd  -d home/mob_app_user mob_app_user

