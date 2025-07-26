#! /usr/bin/bash

DEST="$HOME/scripts" #where to save backup
SRC="/home/demo/imp_dir" #what to backup
FILE="$DEST/backups.tar.gz" #saving filename in variable

mkdir -p "$DEST"
tar -czf "$FILE" $SRC
echo "backup saved to file $FILE" || echo "Backup failed"
