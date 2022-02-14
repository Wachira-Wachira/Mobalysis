<<<<<<< HEAD
#!bin/bash 
=======
#!bin/bash
>>>>>>> 08dc788545795f0807e2891a25401540d3554b3e
sudo apt-get update
sudo apt-get -y install postgresql
sudo service postgresql start
sudo -u postgres psql -c"create user mob_db_user with encrypted password 'mob_db_pass';"
sudo service postgresql restart
