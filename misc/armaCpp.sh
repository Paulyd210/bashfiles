#! /bin/bash

# Script to compile a C++ program with 
# Armadillo library. 

PATH_TO_FILE=${1}
FILENAME=${2}
COMPLETE_FILE=${PATH_TO_FILE}/${FILENAME}
NAME_EXE=`echo ${FILENAME} | rev | cut -c5- | rev`
g++ ${FILENAME} -o ${NAME_EXE} -O2 -larmadillo
