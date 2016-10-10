#!/usr/bin/python

with open('/tmp/rate.txt') as f:
    content = f.read()
output = '"' + content.replace(' ', '":"').replace('\n', '","')
print("{" + output[:-2] + "}")
