#!/bin/bash
# ifs and elses in shell

if [ $1 -gt 100 ]
then
    echo Hey that\'s a large number.
elif [ $1 == 100 ]
then
    echo  100 is  not too large or small
else
    echo $1 is not a large number.
fi

date
