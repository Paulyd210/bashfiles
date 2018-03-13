#!/bin/bash

usage()
{
	echo "Returns a simple OK text if artifactory is working well"
	echo "$0 [url]"
	echo "Example: statusPing.sh http://www.artifactory.mycompany.com "	
	exit 0
}


if [ "${1}" == "--h" ]; then
	usage
else
	URL=${1}
	URL="$URL/artifactory/api/system/ping"
	echo "Enter name of valid user: "
	read USER
	echo "Enter password: "
	read -s PASS
	curl -u ${USER}:${PASS} -X GET ${URL}
fi
