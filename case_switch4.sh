#!/bin/bash

case "$1" in
'start')
echo "Starting application"
systemctl start httpd
;;
'stop')
echo "Stopping application"
systemctl stop httpd
;;
'restart')
echo "Usage: $0 [start|stop]"
;;
esac
