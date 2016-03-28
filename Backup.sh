db="$(TZ='Asia/Kolkata' date +'%d-%m-%Y-%T')"
db_filename=$db'.sql'
#db_filename is a name mysql dump file on basis of current date and time.
echo $db_filename
mysqldump -umysql_username -pmysql_password  dbname > ~/db_backup/$db_filename
#optional 
  #if you want to save mysql dump file in any  other server Like gmail or anyother mail server So create one gmail id for storing all backups

echo "Send successfully"|uuencode  ~/db_backup/$db_filename | mail -s "Backup" mailid 
