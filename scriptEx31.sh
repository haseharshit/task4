#!/bin/bash

echo "Enter the directory of which backup is to be done."
read SOURCE   #the folder that contains the files that we want to backup

TIME=`date +%b-%d-%y` #get the current date
DESTPATH1=$(pwd)
DESTPATH2="/$TIME.tar.gz"
DESTINATION="$DESTPATH1$DESTPATH2" #create a backup file using the current date

tar -zvcf $DESTINATION -P $SOURCE #create the backup
