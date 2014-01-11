#! /usr/bin/env python

# IF-ELIF-ELSE blocks
if False:
  print 'this code will not run'
elif True:
  print 'this code will run'
else:
  print 'it will not get this far'

# IF NOT blocks (UNLESS equivalent)
x = False
if x is not True:
  print 'x is {0}'.format(x)

# FOR loops
a = range(0,10) # create a list containing the range 0 to 9
for i in a:
  print "element: {0}".format(i) # print the variable in the string

# WHILE loops
i = 0
while i < 10:
  print "i = {0}".format(i)
  i += 1 # increment i by 1, Python does not have i++