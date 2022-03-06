#!/bin/bash

echo "Enter the directory of which backup is to be done."
read SOURCE   
TIME=`date +%b-%d-%y` #get the current date
DP1=$(pwd)
DP2="/$TIME.tar.gz"
D="$DP1$DP2" #create a backup file using the current date

tar -zvcf $D -P $SOURCE #create the backup
