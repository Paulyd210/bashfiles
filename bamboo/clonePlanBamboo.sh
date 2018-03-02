#! /bin/bash



# Script for copying one plan into a new one with bamboo

URL="http://localhost:8085/rest/api/latest/clone"

usage()
{
	echo "Usage $0 [from Project] [from Plan] [to Project] [to Plan]" 1>&2; exit 1;
}

FROMPROJ=${1}
FROMPLAN=${2}
TOPROJ=${3}
TOPLN=${4}



if [ -z ${FROMPROJ} ] || [ -z ${FROMPLAN} ] || [ -z ${TOPROJ} ] || [ -z ${TOPLN}  ]; then

	echo "All arguments are required"
	echo "Please get your shit together!"
	usage
	exit 1
fi

echo "Please input your Bamboo User"
read USER
echo "Enter password for user: ${USER}"
read -s PASS

curl -u ${USER}:${PASS} -X PUT ${URL}/${FROMPROJ}-${FROMPLAN}:${TOPROJ}-${TOPLN}

