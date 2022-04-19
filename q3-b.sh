#!/bin/bash

read -p "Enter file name : " filename

number_of_lines=`wc --lines < $filename`
echo "Number of lines: `expr $number_of_lines `"