#!/bin/bash
DATE=`date +%Y-%m-%d`
# mysql dump
mysqldump -u USERNAME -pPASSWORD --all-databases > dump_$DATE.sql
# copy to other server
scp -P SERVERPORT dump_$DATE.sql USERNAME@SERVERIP:/backup/mysql
# delete file
rm -f dump_$DATE.sql
