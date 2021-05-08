#! /bin/bash -x
read -p "enter First nuumber:" a
read -p "enter Second Number:" b
read -p "enter Third Number:" c

result=`echo $a $b $c | awk '{print $1+$2*$3}'`
echo $result
