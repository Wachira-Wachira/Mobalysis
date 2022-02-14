#!/bin/bash 
sudo apt-get update
sudo apt-get -y install postgresql
sudo service postgresql start

sudo -u postgres psql -c"create user mob_db_user with encrypted password 'mob_db_pass';"

sudo -i -u postgres psql -c "CREATE USER mob_app_usr WITH PASSWORD 'test2023';"

sudo su

git clone https://github.com/PaulineNjokiMaina/Mobalysis.git ./PATHs
