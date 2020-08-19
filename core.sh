#!/bin/bash
#pick an array as stdin and echo on terminal

let i=0

cat /dev/stdin | while read line; 
do

	if [ $i -eq 0 ]
	then
		# echo directory name $line
		dirloc=$line
		mkdir "$dirloc"
		let i++
		continue
	fi

	if [ ${#line} -lt 3 ]
	then
		# echo this line $line is not string
		let i=$line
		continue
	fi

	name=${line,,}
	filename=${name// /_}

	mkdir "$dirloc"/"$i.$line"
    # echo $i"$line" - $name - $filename
    touch "$dirloc"/"$i.$line"/$filename.js
    touch "$dirloc"/"$i.$line"/$filename.cs
    touch "$dirloc"/"$i.$line"/$filename.java
    touch "$dirloc"/"$i.$line"/$filename.cpp
    touch "$dirloc"/"$i.$line"/$filename.py

    echo '<h1>'$line'</h1>
<p>source: <a href="https://www.codesignal.com/">codesignal.com</a>' >"$dirloc"/"$i.$line"/README.md



    let i++
done

echo all done.

 
