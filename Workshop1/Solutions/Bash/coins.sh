#!/bin/bash

while read -r line && [[ $line != '#' ]]; do
   result=''
   target=`echo $line | cut -d':' -f2`
   coins=`echo $line | cut -d':' -f1 | tr ',' '\n' | sort -nr | tr '\n' ' '`
   for c in $coins; do
      n=0
      while [ $target -ge $c ]; do
         n=$((n+1))
         target=$((target-c))
      done
      if [ $n -gt 0 ]; then
         result=$result$c'x'$n','
      fi
   done
   echo $result | sed 's/,$//'
done

