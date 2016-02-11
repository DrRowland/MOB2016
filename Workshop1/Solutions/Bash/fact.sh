#!/bin/bash

while read -r line && [[ $line != '#' ]]; do
   seq -s '*' 1 $line | sed 's/.$//' | bc -l
done

