#! /usr/bin/bash

find /var/log  -type f -name "*.log" -mtime +7 -delete

if [ $? -eq 0 ]
then
echo "old log files deleted successfully"
else
echo "something went wrong: '$?' "
fi
