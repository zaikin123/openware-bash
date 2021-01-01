#!/bin/bash
if [ $# != 0 ] ; then

for n in $@
do
out=`ls -R | grep $n`
echo $out
done

else 

echo "ERROR!"
exit 0

fi

