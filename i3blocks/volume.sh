#!/bin/bash

if [ $1 = 4 ]; then
	amixer -q sset 'Master' 1%-
elif [ $1 = 5 ]; then
	amixer -q sset 'Master' 1%+
fi

volume=$(amixer get Master | awk '$0~/%/{print $5}' | tr -d '[]')
echo "🔈${volume}"

exit 0
