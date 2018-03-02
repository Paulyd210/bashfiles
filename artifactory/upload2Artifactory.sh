#!/bin/bash

usage() {
	echo "Usage: $0 [-f fileName] [-u artifactoryUrl] [-p repo-name]" 1>&2; exit 1;
}

while getopts ":f:u:p:" OPTION; do
	case "${OPTION}" in
	f)
		FILENAME=${OPTARG}
		;;
	u) 
		URL=${OPTARG}
		;;
	p)	
		REPONAME=${OPTARG}
		;;
	*)
		usage
		;;
	esac
done

if [ -z ${FILENAME} ] || [ -z ${URL} ] || [ -z ${REPONAME} ]; then

	echo "All arguments are required"
	echo "Please get your shit together!"
	usage
	exit 1
fi

echo "Please enter user: "
read USER
echo "Enter password for user: ${USER}"
read -s PASSWORD

curl -u ${USER}:${PASSWORD} -X PUT ${URL}/${REPONAME}/${FILENAME} -T ${FILENAME}
 
