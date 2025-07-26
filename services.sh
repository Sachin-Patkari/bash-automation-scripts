#! /usr/bin/bash

SERVICES="ssh"

if systemctl is-active --quiet "$SERVICE"
then
echo "$SERVICE IS RUNNING. "
else
echo "$SERVICE is not running"
sudo systemctl restart "$SERVICE"
fi

if systemctl is-active --quiet "$SERVICE"
then
echo "$SERVICE restarted successfully"
else
echo "$SERVICE failed to restart"
fi  
