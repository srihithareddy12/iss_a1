#!/bin/bash

read -p "Enter file name : " filename
grep -v "^$" $filename>temp.txt

while read -r line
do
awk -F~ '{print $2" once said, \""$1"\""}'>>speech.txt
done <temp.txt
rm temp.txt