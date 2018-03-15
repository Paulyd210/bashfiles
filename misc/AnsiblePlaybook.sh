#!/bin/bash	

# Display usage instructions. 
usage()
{
	echo "Usage: $0 [-p <Playbook Path>] [-t <Playbook Title>]" 1>&2; exit 1;
}

# Gather the user options
while getopts ":p:t:" OPTION; do
	case "${OPTION}" in
	p)
		PLAYBOOK_PATH=${OPTARG}
		;;
	t)
		PLAYBOOK_TITLE=${OPTARG}
		;;
	*)
		usage
		;;
	esac
done

# If the user missed a switch, get them remind them that they need to add it
if [ -z ${PLAYBOOK_PATH} ]; then
	echo "Please, supply a project path"
	exit 1
fi

if [ -z ${PLAYBOOK_TITLE} ]; then
	echo "Missing Project title"
	exit 1
fi

# Creating structure for layout
mkdir -p "${PLAYBOOK_PATH}/files"
mkdir -p "${PLAYBOOK_PATH}/group_vars"
mkdir -p "${PLAYBOOK_PATH}/host_vars/dev"
mkdir -p "${PLAYBOOK_PATH}/host_vars/uat"
mkdir -p "${PLAYBOOK_PATH}/host_vars/prd"
mkdir -p "${PLAYBOOK_PATH}/inventories"
mkdir -p "${PLAYBOOK_PATH}/roles"

#Use ansible galaxi init to create a default 'common role'
cd ${PLAYBOOK_PATH}/roles && ansible-galaxy init common 
touch "${PLAYBOOK_PATH}/inventories/dev"
touch "${PLAYBOOK_PATH}/inventories/uat"
touch "${PLAYBOOK_PATH}/inventories/prd"
touch "${PLAYBOOK_PATH}/${PLAYBOOK_TITLE}.yml"
