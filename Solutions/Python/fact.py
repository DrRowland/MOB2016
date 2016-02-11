#!/usr/bin/env python

import sys

factorials = ["1"]
for x in range(1, 16):
   factorials.append(str(int(factorials[x-1])*x))

for line in sys.stdin:
   if(line[0]=='#'):
      break
   print factorials[int(line)]


