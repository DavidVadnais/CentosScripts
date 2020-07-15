#!/bin/sh

# The purpose of this script is to change mouse sensitivity

[[ -z "${1}" ]] && echo "I cant work without an input" && exit 1

newSpeed=${1}
if [ ${newSpeed} == default ]; then
	echo "reseting speed to default"
	xset m default
elif [[ "${newSpeed}" != ?(+|-)+([0-9]) ]]; then
	echo "invalid/non-numeric input"
	exit 1
else
	echo "setting mouse speed to ${newSpeed}x higher "
	xset m ${newSpeed} 0
fi


exit 0
