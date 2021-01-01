#!/bin/bash

if [ $# == 2 ] ; then

find_fold=`find -maxdepth 2 -name "$2*"`
for n in $find_fold

do
FILE=$n
echo $n
while IFS= read -r line
do

	grep -n  -w "$1" | cut -f1 -d:

done < $FILE

done

else 
	echo "ERROR!!"
	exit 0 
fi

