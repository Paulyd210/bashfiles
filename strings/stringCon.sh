#! /bin/bash

usage()
{
	echo "Script for concatenating strings"
	echo "${0} [string1] [string2] ... [n-string]"
}


if [ ${1} == "--help" ]; then

	usage
	exit 1
else	
	echo "Number of arguments: $#"

	ARRAY_PARAM=( "$@" )

	for var in ${ARRAY_PARAM[*]}
	do
        	APPSTRING+=$var

	done
	echo "The final string is: " ${APPSTRING}	
	
fi

exit 0
