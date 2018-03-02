#! /bin/bash
# ziplookup, search city-data.com for identifying city and state in USA


URL="www.city-data.com/zips"
echo -m "ZIP code $1 is in: "
curl -s dump "${URL}/${1}.html" | grep -i '<title>' | cut -d\( -f2|cut -d\) -f1

exit 0 







