#!/bin/sh

# Used to solve s9 error for league of legends on centos8

onOrOff=${1}
echo ${onOrOff}

if [ "${onOrOff}" = "on" ]
then
	tc qdisc add dev enp5s0 root netem delay 300ms
	echo "delay on"
elif [ "${onOrOff}" = "off" ]; then
	tc qdisc del dev enp5s0 root
	echo "delay off"
fi

exit 0 
