#!/bin/bash

read -p "Enter file name : " filename
count=0

while read line;
do
((count++))
wordcount=$(wc -w <<< "$line")

echo "line number: $count    count of words: $wordcount"
done <$filename


