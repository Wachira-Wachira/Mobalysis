#!bin/bash 
sudo apt-get update
sudo apt-get -y install postgresql
sudo service postgresql start
sudo -u postgres psql -c"create user mob_db_user with encrypted password 'mob_db_pass';"
sudo service postgresql restart

sudo apt-get install python3-pip
sudo pip3 install virtualenv 
virtualenv venv 
source venv/bin/activate
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt upgrade
sudo apt install fish
vf install

sudo -u postgres psql -c"CREATE DATABASE mobalytics with owner 'mob_db_user';"
