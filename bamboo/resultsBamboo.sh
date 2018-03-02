#! /bin/bash



# Script for copying one plan into a new one with bamboo

URL="http://localhost:8085/rest/api/latest/result"

usage()
{
	echo "Usage $0 [Project] [Plan] [Number of build, leave empty for latest result]" 1>&2; exit 1;
}

PROJ=${1}
PLAN=${2}

if [ -z ${PROJ} ] || [ -z ${PLAN} ]; then

        echo "All arguments are required"
        usage
        exit 1
fi

if [ -z ${3} ]; then
	NUMBER="latest"
else
	NUMBER=${3}
fi

echo "Please input your Bamboo User"
read USER
echo "Enter password for user: ${USER}"
read -s PASS

curl -u ${USER}:${PASS} -X GET ${URL}/${PROJ}-${PLAN}-${NUMBER}

