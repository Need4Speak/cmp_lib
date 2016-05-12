#!/bin/bash
#note: this script should work at nano/src
lib_path=`find build-$1-kit_chao-Debug/ -name \*.a`
echo "#location of qtc built lib: $lib_path#"
echo "#start ar tv $lib_path into find_files/$1/lib_qtc#"
ar tv $lib_path | awk '{print $8}' > find_files/$1/lib_qtc 
echo "#successful ar tv lib#"

echo "#start use sed to wipe .cc"
sed -e 's/\.cc//g' find_files/$1/lib_qtc > find_files/$1/lib_qtc_sort
echo "#end wipe#"

#echo "#start sort find_files/$1/lib_qtc#"
#sort  "find_files/$1/lib_qtc_sort"
#echo "#end sort#"
