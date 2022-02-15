#!/bin/bash 


sudo su


git clone https://github.com/PaulineNjokiMaina/Mobalysis.git ./PATHs 
useradd  mob_app_usr -n -d /users/mob_app_usr
git clone https://github.com/PaulineNjokiMaina/Mobalysis.git ./users/mob_app_usr

echo executing Env.variables
export DBNAME=mobalytics
export DBUSER=mob_db_user
export DBPASS=mob_db_pass
export DBHOST=localhost
export DBPORT=54322

sudo apt install python3.8-venv

#Setting up the environment

python3 -m venv env

#Activating the envirionment
source env/bin/activate


#Install packages

pip3 install django
