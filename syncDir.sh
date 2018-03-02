#! /bin/bash

# Script for syncronize two directories. 


FROM_DIR=${1}
TO_DIR=${2}

rsync -anr "${FROM_DIR}" "${TO_DIR}"









