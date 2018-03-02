#! /bin/bash
#
# Usage: ./script.sh DIRECTORY
echo "Script to create an empty file in every subdirectory"
echo "for keeping directory structure in a git repository"
DIRECTORY=${1}
EMPTYFILE=".gitkeep"
cd ${DIRECTORY}
find . -type d -exec touch {}/${EMPTYFILE} \;
echo "Finished"
