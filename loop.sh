#!/bin/sh

a=0
while [ "$a" -lt 10 ]
do
    b="$a"
    while [ "$b" -ge 0 ]
    do
        echo -n "$b " #这种写法在mac环境的sh是不认的
        b=`expr $b - 1`
    done
    echo 
    a=`expr $a + 1`
done

echo -------------------------
#loop control
a=20
until [ $a -lt 10 ] #a < 10 的时候不执行
do
    echo $a
    a=`expr $a - 1`
done

echo "====================="

a=10
until [ $a -lt 10 ]
do
    echo $a
    if [ $a -eq 20 ]
    then 
        break
    fi
    a=`expr $a + 1`
done

echo "++++++++++++++++++++++"
for var in 1 2 3
do 
    for var2 in 0 5
    do
        if [ $var -eq 2 -a $var2 -eq 0 ]
        then 
            break 2 # Upon execution, you will receive the following result. In the inner loop, you have a break command with the argument 2. This indicates that if a condition is met you should break out of outer loop and ultimately from the inner loop as well. 
        else
            echo "$var $var2"
        fi
    done
done

echo "*************************"

NUMS="1 2 3 4 5 6 7 8"
for NUM in $NUMS # 这种写法在zsh下是失效的
do
    echo $NUM
    Q=`expr $NUM % 2`
    echo "Q is $Q"
    if [ $Q -eq 0 ]
    then 
        echo "Number is an even number"
        continue
    fi
    echo "Found odd number"
done

