#!/bin/bash

for filename in /home/ec2-user/activity2testdir/*; do
	# echo $filename
	mv $filename $filename.`date +%Y%m%d`
	echo $filename
done



exit 0
