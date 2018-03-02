#!/bin/bash

usage() {
	echo "Usage: $0 [artifactoryUrl] " 1>&2; exit 1;
}

if [ -z "${1}" ]; then
	echo "Please enter an URL"
	usage 
	exit 1
fi

echo "Please enter user: "
read USER
echo "Enter password for user: ${USER}"
read -s PASSWORD

URL=${1}

curl -u "${USER}":"${PASSWORD}" -X GET "${URL}"/artifactory/api/storageinfo >> storageInfo.json 
 
