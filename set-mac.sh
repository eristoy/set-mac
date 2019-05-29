#!/bin/bash
MAC=$(shuf -n 1 maclist)
if [[ $EUID -ne 0 ]]; then
	echo "This Script Must Be Run as Root!"
	exit 1
fi
ifconfig en0 ether $MAC
