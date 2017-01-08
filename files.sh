#!/bin/bash
DATE=`date +%Y-%m-%d`
# create archive
tar -zcf files_$DATE.tar.gz /home/user/files
# copy to other server
scp -P SERVERPORT files_$DATE.tar.gz USERNAME@SERVERIP:/backups/files
# delete archive
rm -f files_$DATE.tar.gz
