#!/usr/bin/env bash
printf "" > ani.txt
for a in `seq 0 7`; 
do 
x=`printf "7 * %d ^ %d\n" 10 $a | bc`; 
printf "%d -> %d : " $a $x; 
f=`head -n $x uniq.txt|tail -n 1` ;
printf "%d\n" $f
printf "%d,%d,%d\n" "$a" "$x" "$f" >> ani.txt
done;