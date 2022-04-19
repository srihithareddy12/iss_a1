#!/bin/bash

read -p "Enter file name : " filename

number_of_bytes=`wc --bytes < $filename`

echo "Number of bytes: $number_of_bytes"









