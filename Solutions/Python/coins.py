#!/usr/bin/env python

import sys

for line in sys.stdin:
   if(line[0]=='#'):
      break
   (coins,target)=line.split(':')
   coins = sorted(map(int, coins.split(',')), reverse=True)
   target = int(target)
   result = ""
   for c in coins:
      n=0
      while(target>=c):
         n+=1
         target-=c
      if(n>0):
         result+=str(c)+'x'+str(n)+','
   print result[:-1]

