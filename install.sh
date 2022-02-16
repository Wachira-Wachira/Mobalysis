#! /bin/bash

#ceating user and home directory
sudo useradd  mob_app_usr -m -d /home/mob_app_usr
#cloning repo to users home directory
sudo git clone https://github.com/PaulineNjokiMaina/Mobalysis.git ./home/mob_app_usr

#Creating Env. variables
echo Creating Env.variables
sudo echo "export DBNAME=mobalytics" >> home/mob_app_usr/.bashrc
sudo echo "export DBUSER=mob_db_user" >> home/mob_app_usr/.bashrc
sudo echo "export DBPASS=mob_db_pass" >> home/mob_app_usr/.bashrc
sudo echo "export DBHOST=localhost" >> home/mob_app_usr/.bashrc
sudo echo "export DBPORT=54322" >> home/mob_app_usr/.bashrc

#Installing backend Env.Variables
sudo apt install python3.8-venv

#Setting up the environment

sudo python3 -m venv env

#Activating the envirionment
sudo source env/bin/activate


#Install Django packages
echo Installing Django 

sudo apt-get update

sudo apt install python3-django

#Creating Migration
echo Creating Migration 
sudo python3 home/mob_app_usr/backend/manage.py makemigrations 
sudo python3 home/mob_app_usr/backend/manage.py migrate
