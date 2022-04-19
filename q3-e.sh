#!/bin/bash

read -p "enter filename: " filename

function Rep_word_freq() {
    awk '
    BEGIN { FS="[^a-zA-Z]+"} {
       for(i=1;i<=NF;i++){
          words = $i
          a[words]++
        }
    }
    END {
       for(w in a)
       {
           if(a[w]>1)
           printf("Word: %s - Count of repetition: %d\n",w,a[w])
        }
    } '
}
cat $filename | Rep_word_freq



