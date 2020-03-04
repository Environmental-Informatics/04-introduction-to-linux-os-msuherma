#!/bin/bash
# provides information about the directory 
# msuherma 3/3/2020

num_file = ls -1 | wc -l    #obtained from tldp.org/HOWTO/bash-Propt-HOWTO/x700.html
size_file = du -a -h --max-depth=1 | sort -hr
last_mod = -type f -printf '%T@ %p\n' | sort -k1,1nr | head -5


echo number of files in this directory: $num_file
echo the files size are: $size_file
echo last modified file is: $last_mod

