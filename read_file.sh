#!/bin/bash 
#note: this file should word at nano/src
function batch_convert() {
    for file in `ls $1`
    do
        if [ -d $1"/"$file ]
        then
            batch_convert $1"/"$file $2
        else
		flag=`echo $file | awk '/.o$/'`
		#echo "flag: $flag"
		if [ "$flag" != "" ]
		then
            		echo "$file" >> find_files/$2/lib_build
		fi
        fi
    done
}

#judge weather sub pro dir exist
if [ ! -d "find_files/$1" ]
then
        mkdir "find_files/$1"
fi

#delete old lib_build
if [ -e "find_files/$1/lib_build" ]
then
	rm -rf find_files/$1/lib_build
fi

batch_convert $1"/build" $1
#sort find_files/$1/lib_build
sort find_files/$1/lib_build -o find_files/$1/lib_build_sort
