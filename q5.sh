#!/bin/bash

#part A
read str
reversed_string=""

length=${#str}

for (( i=$length-1; i>=0; i-- ))
do
   reversed_string="$reversed_string${str:$i:1}"
done
echo "reversed string=$reversed_string"

echo part B result=
echo part B result=`"$str"|tr "0-9a-zA-Z" "1-9a-zA-Z_"`


for((i=$length/2-1; i>=0;i--))
do
half_rev="$half_rev${str:$i:1}"
done

for((i=$length/2; i<=$length;i++))
do
half_rev="$half_rev${str:$i:1}"
done
echo "half reversed string=$half_rev"



