#!/bin/bash
#
#add_divider_to_multiple_file.sh: It mainly add divider line to all blog posts file in the line 8
#The effects please refer to my blog: http://xautjzd.github.io
#

FILES=source/_posts/*.markdown  # Specify path and file
for file in $FILES
do
		NUM=8                       # specify the line to add some contents to

		line=$(awk NR==$NUM $file)  # Get content of the line 8
		if [[ $line != *"---"* ]];  # If the specified line doesn't contain '---', then add '---'
		then
				sed -i "$NUM i ---" $file; # -i: apply the result to original file. Insert a new line before the pattern with the "i" command
		fi;
done
