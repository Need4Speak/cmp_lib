#!/bin/sh
#note: this script should be used at nano/src
lib_build_sort="find_files/$1/lib_build_sort"
lib_qtc_sort="find_files/$1/lib_qtc_sort" 
sort $lib_build_sort > lib_build_sort.srt
sort $lib_qtc_sort > lib_qtc_sort.srt
echo "#start compare find_files/$1/lib_build_sort to find_files/$1/lib_qtc_sort#"
echo "#diff as below#"
comm -3 lib_build_sort.srt lib_qtc_sort.srt
rm -f lib_build_sort.srt lib_qtc_sort.srtlib_build_sort.srt lib_qtc_sort.srt
echo "#end cmp#"
