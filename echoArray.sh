#!/bin/bash
#pick an array as stdin and echo on terminal

mkdir dirloc
let i=01
arr=$(cat /dev/stdin )

for ele in $arr
do
    name=$( echo $ele | sed 's/[^a-zA-Z0-9]//g' )
    dirname=$(printf %02d $i)-$name
    mkdir dirloc/$dirname
#    touch dirloc/$dirname/$name.js
#    echo '<?php' >dirloc/$dirname/$name.php
#    touch dirloc/$dirname/$name.java
#    touch dirloc/$dirname/$name.py
    touch dirloc/$dirname/$name.sql
    echo '<h1>'$name'</h1>
<p>source: <a href="https://www.codesignal.com/">codesignal.com</a>
' >dirloc/$dirname/README.md
    #touch dirloc/$(printf %02d $i)-$name.js
    let i++
done

echo all done.

 
