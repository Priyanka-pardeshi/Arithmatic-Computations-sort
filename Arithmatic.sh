#! /bin/bash -x

declare -A expr1
read -p "enter First nuumber:" a
read -p "enter Second Number:" b
read -p "enter Third Number:" c

result1=`echo $a $b $c | awk '{print $1+$2*$3}'`

result2=`echo $a $b $c | awk '{print $1*$2+$3}'`

result3=`echo $a $b $c | awk '{print $3+$1/$2}'`

result4=`echo $a $b $c | awk '{print $1%$2+$3}'`

expr1["results_1"]=$result1
expr1["results_2"]=$result2
expr1["results_3"]=$result3
expr1["results_4"]=$result4
echo ${expr1[@]}

declare -a arr
arr[0]=$(( expr1["results_1"] ))
arr[1]=$(( expr1["results_2"] ))
arr[2]=$(( expr1["results_3"] ))
arr[3]=$(( expr1["results_4"] ))

#print array
echo ${arr[@]}




