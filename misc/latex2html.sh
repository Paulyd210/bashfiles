#! /bin/bash
# Script to make html files from latex files. 
PATH_TO_FILE=${1}
FILENAME=${2}
HTML=${PATH_TO_FILE}/html_code
mkdir ${HTML}
cd ${HTML}
htlatex ../${FILENAME}
