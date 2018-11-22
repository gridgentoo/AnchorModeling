#!/bin/sh
for i in $(find . -name '*_*.sh' | egrep -v -e '^./_'); do j=`echo $i | sed -e 's#:[^:]*##g'`; k=`cat ./cache.txt | grep $j`; m=`echo $k | sed -e 's#[^:]*: ##g;s#.* N=#N=#g'`; sed -i "s# N=.*# $m#" $i; echo "loaded $i"; done
