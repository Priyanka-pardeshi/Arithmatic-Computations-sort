#! /bin/bash -x
read -p "enter First nuumber" a
read -p "enter Second Number:" b
read -p "enter Third Number:" c

result1=`echo $a $b $c | awk '{print $1+$2*$3}'`
echo $result1

result2=`echo $a $b $c | awk '{print $1*$2+$3}'`
echo  $result2

result3=`echo $a $b $c | awk '{print $3+$1/$2}'`
echo $result3

result4=`echo $a $b $c | awk '{print $1%$2+$3}'`
echo $result4


