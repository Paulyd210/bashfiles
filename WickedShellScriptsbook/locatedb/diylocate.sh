#!/bin/bash

#locate - searches the locate database for the specified pattern
locatedb="/var/locate_test.db"
exec grep -i "$@" $locatedb
