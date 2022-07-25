#!/bin/bash

let i1=1
for file in $(ls | grep -v 1.sh); do
    [ -f $file ] && mv $file $(printf "%09d" $i1).png && let i1=i1+1
done

let i2=1

for file in $(ls | grep -v 1.sh); do
    [ -f $file ] && mv $file $(printf "%02d" $i2).png && let i2=i2+1
done