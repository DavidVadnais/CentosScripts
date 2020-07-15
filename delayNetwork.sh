#!/bin/sh

# Used to solve s9 error for league of legends on centos8

[[ -z "${1}" ]] && echo "I cant work without an input of on or off" && exit 1


onOrOff=${1}

if [ "${onOrOff}" = "on" ]
then
	tc qdisc add dev enp5s0 root netem delay 300ms
	echo "delay on"
elif [ "${onOrOff}" = "off" ]; then
	tc qdisc del dev enp5s0 root
	echo "delay off"
else 
	echo "only accepts inputs of on or off" && exit 1
fi

exit 0 
