#!/bin/bash
#a bit of standard input into shell practice

echo Hello mate you  piped this to me
cat /dev/stdin | cut -d$'\n' -f2


