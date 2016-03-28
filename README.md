For Creating automatic backup in every ten minutes

Note: In Backup.sh file replace mysql_username and mysql_password with your username and password and mail id with your mail id example gmail,hotmail
sudo apt-get install cron
#if you want to send attachment with mail body install sharutils :
sudo apt-get install sharutils

mkdir db_backup

cd db_backup

move/copy  Backup.sh file inside db_backup

for getting absolute path type command :

pwd

#output (Absolute path of Backup.sh)

  /home/palashmaran/db_backup  

paste this in place of Absolute path

Set execute permissions for Backup.sh

sudo chmod +x Backup.sh

# For executing Backup.sh in every ten minutes , we are using cron utility here

crontab -e 

select 2 or any other editor 

#for creating Backup in every ten minutes 

#*/10 * * * * Absolute path/ Backup.sh

*/10 * * * * /home/palash/db_backup/Backup.sh


if you have chosen option 2 then For save and exit

press ctrl+x



# for more time interval syntax refer cron examples

# To check cron status 
sudo service cron status
# To restart cron
sudo service cron restart
#To stop cron
sudo service cron stop
#to start cron
sudo service cron start
