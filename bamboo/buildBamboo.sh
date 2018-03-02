#! /bin/bash



# Script for copying one plan into a new one with bamboo

URL="http://localhost:8085/rest/api/latest/queue"

usage()
{
	echo "Usage $0 [from Project] [from Plan] [to Project] [to Plan]" 1>&2; exit 1;
}

PROJ=${1}
PLAN=${2}


if [ -z ${PROJ} ] || [ -z ${PLAN} ]; then

	echo "All arguments are required"
	echo "Please get your shit together!"
	usage
	exit 1
fi

echo "Please input your Bamboo User"
read USER
echo "Enter password for user: ${USER}"
read -s PASS

curl -u ${USER}:${PASS} -X POST ${URL}/${PROJ}-${PLAN}

