#!/bin/sh

### =============================================== ###
### Summary: backup project-files
### Files: backup.sh utf-8 nobomb
### Author: rosettastone1886@gmail.com
### Version: 2018-06-12
### =============================================== ###


### variables
PROJECT_PATH='project'
BACKUP_PATH='backup'
HEADER='backup_'
date=`date "+%Y%m%d"`
name="$HEADER$date.tar.gz"

### check backup exists
if test -e $BACKUP_PATH/$name; then
   echo 'already exists todays backups.'
   read -p 'are you overwrite? (y/n) ' yn
   if [ $yn != 'y' ]; then
      # MEMO: y以外の入力の場合は終了する
      read -p 'press <enter> to exit... '
      exit 0
   fi
fi

### backup
tar -zcvf $BACKUP_PATH/$name $PROJECT_PATH

### exit
echo ''
echo 'compression complete!'
read -p 'press <enter> to finish... '
exit 0

