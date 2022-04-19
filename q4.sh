#!/bin/bash

IFS=', ' read -r -a num

n=${#num[*]}

for((i=0;i<n;i++))
do
 for((j=i+1;j<n;j++))
 do
 if [ ${num[$i]} -gt ${num[$j]} ]
 then
   x=${num[$i]}
   num[$i]=${num[$j]}
   num[$j]=$x
 fi  
 done
done 

echo ${num[@]}