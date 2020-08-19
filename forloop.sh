#!/bin/bash
#running a for loop

names='Stan Kyle Cartman'

for name in $names
do
    echo $name
done

echo First simple loop done  following loop with range with steps

#{1..5} for range for step add ..step like {1..5..2}
for value in {10..0..2}
do
    echo $value
done

echo ALL done

