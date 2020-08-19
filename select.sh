#!/bin/bash
# PS3 select list don't forget to break loop

names='Kyle Cartman Stan Quit'

PS3='Select character: '

select name in $names
do
    if [ $name == 'Quit' ]
    then
	break
    fi
echo Hello $name
done

echo Bye
