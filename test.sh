#!/bin/bash

str=`objdump -D $1 | grep call | grep strcpy@plt`

if [ "$str" != "" ] ; then
	echo "$1 is vulnerable to strcpy"
	exit 1
else
	echo "$1 is not vulnerable to strcpy"
	exit 0
fi
