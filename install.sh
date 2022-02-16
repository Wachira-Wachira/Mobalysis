#! /bin/bash

#ceating user and home directory
sudo useradd  mob_app_usr -n -d /users/mob_app_usr
#cloning repo to users home directory
sudo git clone https://github.com/PaulineNjokiMaina/Mobalysis.git ./users/mob_app_usr

#Creating Env. variables
echo Creating Env.variables
export DBNAME=mobalytics
export DBUSER=mob_db_user
export DBPASS=mob_db_pass
export DBHOST=localhost
export DBPORT=54322

#Installing backend Env.Variables
sudo apt install python3.8-venv

#Setting up the environment

sudo python3 -m venv env

#Activating the envirionment
sudo source env/bin/activate


#Install packages

sudo pip3 install django

#Creating Migration

sudo python3 /users/mob_app_usr/manage.py makemigrations 
sudo python3 /users/mob_app_usr/manage.py migrate