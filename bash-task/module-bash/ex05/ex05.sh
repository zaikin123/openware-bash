#!/bin/bash 

while getopts s:e:o:m: flag 
do 
	case "${flag}" in

		s)	
			for n in $@
			do
				let sum=$(($sum + $n))
		  	done	  
			echo $sum;;

		o)
                        for n in $@
                        do
				rem=$(($n % 2))
				if [ "$rem" -ne "0" ] ; then
                                let sum=$(($sum + $n))
				fi
                        done
                	echo $sum;;


		 e)
                        for n in $@
                        do
                                rem=$(($n % 2))
                                if [ "$rem" -eq "0" ] ; then
                                let sum=$(($sum + $n))
                                fi
                        done
                        echo $sum;;

		m)
                        for n in $@
                        do
                               	let count=$(($count + 1))
                                let sum=$(($sum + $n))
                        done
			mean=$(($sum / $count))
                        echo $mean;;


		*) 	echo "ERROR!!"
			exit 0;;
	esac
done


