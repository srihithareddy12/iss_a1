#!/bin/bash

read -p "Enter file name : " filename

#part a
grep -v "^$" $filename>check.txt
cat check.txt
echo 

#part b
awk '!x[$0]++' check.txt

