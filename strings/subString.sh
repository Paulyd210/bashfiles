#!/bin/bash

usage()
{
	echo "Usage: $0 [-s string] [-a position] [-f Second Poistion]" 1>&2; exit 1;
}


while getopts ":s:a:f:" OPTION; do
	case "${OPTION}" in
	s)
		STRING=${OPTARG}
		;;	
	a)
		POSITION=${OPTARG}
		;;
	f)
		FINALPOS=${OPTARG}
		;;
	*)
		usage
		;;
	esac
done


if [ -z ${STRING} ]; then
	echo "A string is required "
	usage
fi

if [ -z ${POSITION} ]; then
	POSITION=0
fi

if [ -z ${FINALPOS} ]; then
	FINALPOS=${#STRING}
fi


FINALSTRING=${STRING:POSITION:FINALPOS}
echo ${FINALSTRING}
