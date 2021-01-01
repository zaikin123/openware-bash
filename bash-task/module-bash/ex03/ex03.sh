#!/bin/bash
if [ $# == 0 ] ; then

  echo ''
  exit 1

else

first=`grep -c $2 $1`
echo "$2 $first"
grep -n $2 $1 | cut -f1 -d:

second=`grep -c $3 $1`
echo "$3 $second"
grep -n $3 $1 | cut -f1 -d:

third=`grep -c $4 $1`
echo "$4 $third"
grep -n $4 $1 | cut -f1 -d:

fi
