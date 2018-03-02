#!/bin/bash
#diylocatedb, a wanna-be locate script

locatedb="/var/locate_test.db"

if [ "$(whoami)" != "root" ]; then
	echo "Must be root to run this script." >&2
	exit 1
fi

find / -print > $locatedb 

exit 0
