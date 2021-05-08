#! /bin/bash -x
declare -A expr1
read -p "enter First nuumber" a
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
a[0]=$(( expr1["results_1"] ))
a[1]=$(( expr1["results_2"] ))
a[2]=$(( expr1["results_3"] ))
a[3]=$(( expr1["results_4"] ))

echo ${a[@]}
n=${#a[@]}
for ((i=0; i<n-1 ;i++))
do
        for ((j=i+1;j<n;j++))
        do
                if((a[i]>a[j]))
                then
                        temp=${a[i]}
                        a[$i]=${a[j]}
                        a[$j]=$temp
                fi
        done
done
declare -a b

for ((x=n;x>=0;x--))
do
        b[x]=${a[x]}
        echo ${b[$x]}
done







