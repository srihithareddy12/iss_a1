#!/bin/bash

read -p "Enter file name : " filename

number_of_words=`wc --word < $filename`
echo "Number of words: $number_of_words"