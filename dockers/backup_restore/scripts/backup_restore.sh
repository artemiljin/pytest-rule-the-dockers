#!/bin/sh
#title          :backup_restore.sh
#usage          :backup_restore.sh usage | backup | restore
#description    :backup restore dbs
#author         :Artem Iljin
#date           :2017-11-03
#version        :0.1

export BASE_DIR=/var/lib/backup
export TAR_DIR=/backup

usage() {
  echo "Usage: backup_restore.sh <backup|restore>"
  exit
}

backup() {
  echo "tar mysql"
  tar czvf /backup/backup-mysql.tar.gz -C ${BASE_DIR}/mysql ./
}

restore() {
  if ! [ -e /backup/backup-mysql.tar.gz ]; then
    echo "Archive file backup-mysql.tar.gz does not exist"
    exit 1
  fi
  rm -rf ${BASE_DIR}/mysql/* ${BASE_DIR}/mysql/..?* ${BASE_DIR}/mysql/.[!.]*
  tar -C ${BASE_DIR}/mysql/ -xzvf /backup/backup-mysql.tar.gz
}

if [ $# -ne 1 ]; then
    usage
fi

OPERATION=$1

case "$OPERATION" in
"backup" )
backup
;;
"restore" )
restore
;;
* )
usage
;;
esac
