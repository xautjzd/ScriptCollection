#!/usr/bin/sh

# 1.Change the delemiter of inputfile to colon, there are several methods can do as below.
sed 's/;/:/g' -i inputfile 

# or

awk '$1=$1' FS=';' OFS=':' inputfile newfile

# or

awk 'gsub(";", ":")' inputfile newfile

# or

tr ';' ':' < inputfile > newfile


# 2.Delete specified column of a file

cut -d':' --complement -f1,2 inputfile > newfile # delete the first two column of inputfile

# 3. Replace specified column to what I want
sed -i 's/上楼/-1/g' inputfile
sed -i 's/下楼/0/g' inputfile
sed -i 's/步行/+1/g' inputfile

# 4. Adjust the data to speficied format
sed -i 's/:/:1:/' inputfile
sed -i 's/:/:2:/3' inputfile
...
sed -i 's/://' inputfile
sed -i 's/://3' inputfile
