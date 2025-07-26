#! /usr/bin/bash

usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')
if [ "$usage" -ge 80 ]
then
echo "disk uage at ${usage}% - running out of space"
else
echo "disk ok (${usage}%) "
fi
