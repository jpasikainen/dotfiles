#!/bin/bash

if [ $1 = 4 ]; then
	light -U 10
elif [ $1 = 5 ]; then
	light -A 10
fi

brightness=$(light | awk -F. '{print $1}')
echo "☀️${brightness}%"

exit 0
