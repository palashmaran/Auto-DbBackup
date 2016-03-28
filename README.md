For Creating automatic backup in every ten minutes

sudo apt-get install cron
#if you want to send attachment with mail body install this :
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
