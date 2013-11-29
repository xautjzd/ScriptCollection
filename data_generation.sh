#!/bin/bash

#---------------------------------------------------------------
# Generate data from 1 to the value specified as argument
# 
# Usage: yourpath/data_generation number_you_specified filename
#---------------------------------------------------------------

for (( i = 1; i <= $1; i++ )); do
	echo "1 $i" >> $2
done

if [[ $? == 0 ]]; then
	echo "Data generation completed."
fi

