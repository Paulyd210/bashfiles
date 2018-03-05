#! /bin/bash

usage()
{
	echo "Script return the number of characters in an arguments"
}

if [ ${1} == "--help" ]; then
	usage
	exit 1
else
	VAR1="${1}"
	echo ${#VAR1}
fi

exit 0


