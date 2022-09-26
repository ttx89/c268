#!/bin/bash

echo "1.Username is $USER"
echo "2.current date is $(date +%Y.%m.%d)"
#echo "Time is $(date +%r.%iZ)"
echo "3.Time is $(TZ=':US/Eastern' date +%r)"
echo "4.Current working directory $(pwd)"
#number=ls . -1 | wc -l
echo "5.The number of files in $(pwd) is `ls . -1 | wc -l`"
echo "6.The biggest file is `ls -a | sort -nr | head -1`"
echo `ls -S | head -1`

echo "-------------"
echo `logname`
DATE=`date +%d.%m.%Y`
echo $DATE
TIME=`date +%T.%Z`
echo $TIME
echo `pwd`
LINE=`ls -1 | wc -l`
echo "Number of lines is "$LINE
BIGGEST=`ls -ltS | head -n 2 | grep -v total`
echo $BIGGEST

exit 0
