#!/bin/sh
#judge weather sub pro dir exist
#you should transmit one arg when you use this script
#e.g.: #bash cmp_main.sh front_end 
#note: use front_end rather than front_end/ or an error will occur! 
echo "#check find_files/#"
if [ ! -d "find_files" ]
then
        mkdir "find_files"
fi
source read_file.sh $1
source ar_lib.sh $1
source compare.sh $1
