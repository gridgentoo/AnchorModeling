#!/bin/sh
echo -n > ./cache.txt
for i in $(find . -name '*_*.sh' | egrep -v -e '^./_'); do echo -n $i": " >> ./cache.txt; grep ' N=' $i >> ./cache.txt; sed -i 's# N=.*# N=001#' $i; echo "saved $i"; done
