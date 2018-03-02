#! /bin/bash

# This script creates a simple maven directory structure, 
usage()
{
	echo "This script creates a structure for a maven project with a POM file attached"
	echo "Interactive script, please input project and company name when asked for it."
	echo "This script requires maven installed in the system"
}


if [[ ${1} == "--help" ]]; then 
	usage
	exit 1
fi

echo "Enter project name"
read PROJ_NAME
echo "Enter company name"
read COMP_NAME

mvn archetype:generate -DgroupId=com."${COMP_NAME}"."${PROJ_NAME}" -DartifactId="${PROJ_NAME}" -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false

touch ${PROJ_NAME}/LICENSE.txt ${PROJ_NAME}/NOTICE.txt ${PROJ_NAME}/README.txt
