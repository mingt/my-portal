#!/bin/bash

#if [ $# -lt 2 ]; then
#  echo "USAGE: $0 xxx yyy"
#  exit 1
#fi

rsync -azv -e ssh --delete public/ root@120.24.230.184:/alidata/www/html5up/portal

if [ $? -eq 0 ]; then
  echo "All done, OK"
else
  echo "Something wrong, check it"
fi
