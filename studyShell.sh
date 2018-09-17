#!/bin/sh #alert the system that a shell script is being started

#author： j
# =左右不能有空格

#select DRINK in tea cofee water juice appe all none
#do
#case $DRINK in
#    tea|cofee|water|all)
#        echo "Go to canteen"
#        ;;
#    juice|appe)
#        echo "Available at home"
#        ;;
#    none)
#        break
#        ;;
#    *) echo "ERROR: Invalid selection"
#        ;;
#    esac
#done

# Shell Loop Types

echo -n "1231"
echo -n "ppppppppppp"

a=0
while [ "$a" -lt 10 ]    # this is loop1
    do
    b="$a"
    while [ "$b" -ge 0 ]  # this is loop2
        do
        echo "$b " -n
        b=`expr $b - 1`
    done
        echo
        a=`expr $a + 1`
done

select word in i know that life is always about letting go , but the saddest patt is we even dont have time to say goodbye
do
echo "word is $word"
    case $word in
        i|know|that|life|is|always|about|letting|go)
            echo "上部分"
            ;;
        but|the|saddest|patt|is|we|even|dont|have|time|to|say|goodbye)
            echo "下部分"
            ;;
        ,)
            break
            ;;
        *)
            echo $word
            echo "ERROR: Invalid selection"
            ;;
        esac
done


read a
until [ $a -ge 10 ]
do
    a=`expr $a + 1`
    echo $a
done


for FILE in $HOME/Study/shell/*
do
echo $FILE
done

for var in i love you
do
    echo $var
done

read a
while [ $a -le 10 ]
do
    echo a
    read a
done

# Shell Decision Making

# if...fi statement
# if...else...fi statement
# if...elif...else...fi statement

a=10
b=20

if [ $a == $b ]
then
    echo "a is equal to b"
elif [ $a -gt $b ]
then
    echo "a is greater than b"
elif [ $a -lt $b ]
then
    echo "a is less than b"
else
    echo "None of the condition met"
fi

FRUIT="kiwi"

case "$FRUIT" in
    "apple") echo "Apple pie is quite tasty."
    ;;
    "banana") echo "I like banana nut bread."
    ;;
    "kiwi") echo "New Zealand is famous for kiwi."
    ;;
esac

# File Test Operators
file="/Users/lixiaojie/Study/shell/testFile.m"

if [ -r $file ]
then
echo "File has read access"
else
echo "File does not have read access"
fi

if [ -w $file ]
then
echo "File has write permission"
else
echo "File does not have write permission"
fi

if [ -x $file ]
then
echo "File has execute permission"
else
echo "File does not have execute permission"
fi

if [ -f $file ]
then
echo "File is an ordinary file"
else
echo "This is sepcial file"
fi

if [ -d $file ]
then
echo "File is a directory"
else
echo "This is not a directory"
fi

if [ -s $file ]
then
echo "File size is zero"
else
echo "File size is not zero"
fi

if [ -e $file ]
then
echo "File exists"
else
echo "File does not exist"
fi
#  Shell Basic Operators
A=30
B=7
echo `expr $A + $B`
echo `expr $A - $B`
echo `expr $A \* $B`
echo `expr $A / $B` # 4 int / int
echo `expr $A % $B`
#A=$B
echo $A
echo "A == B $[$A == $B]"
echo "A != B $[$A != $B]"

echo "A= $A B = $B"
echo

if [ $A -eq $B ] # -ne -gt -lt -ge -le
then
    echo equal
else
    echo not equal
fi

if [ $A -eq $B -o $A -ne $B ] # -o
then
    echo hello false
else
    echo shabi
fi

if [ $A -eq $B -a $A -ne $B ] # -a
then
    echo hello false
else
    echo shabi
fi

if [ $A = $B ]
then
    echo hello false
else
    echo shabi
fi

if [ $A != $B ]
then
    echo hello false
else
    echo shabi
fi

OP_NAME="asshole"

if [ -z $OP_NAME ]
then
echo "is asshole"
else
echo "not asshole"
fi

if [ -n $OP_NAME ]
then
echo "is asshole"
else
echo "not asshole"
fi

unset OP_NAME
if [ -z $OP_NAME ]
then
    echo "is asshole"
else
    echo "not asshole"
fi

if [ -n $OP_NAME ]
then
echo "is asshole"
else
echo "not asshole"
fi

if ( !($OP_NAME) ) #  if it is empty, then it returns false.
then
    echo "length is greatter than zero"
else
    echo "length is zero"
fi

val=`expr 2 + 2`
echo $val

#Using Shell Arrays
STUDNETSNAME=("Alice", "Bob", "Ccccc")
echo ${STUDNETSNAME[2]}
echo ${STUDENTSNAME[*]} # 输出所有的元素,zsh不生效
echo ${STUDENTSNAME[@]}

# Special Variables
echo $0 # The filename of the current script.
echo $1 # These variables correspond to the arguments with which a script was invoked. Here n is a positive decimal number corresponding to the position of an argument (the first argument is $1, the second argument is $2, and so on). 第一个传递的参数
echo $# # The number of arguments supplied to a script.
echo $* # All the arguments are double quoted. If a script receives two arguments, $* is equivalent to $1 $2.
echo $@ # All the arguments are individually double quoted. If a script receives two arguments, $@ is  equivalent to $1 $2.

pwds
echo $? # The exit status of the last command executed.
echo $$ # the $ character represents the process ID number, or PID, of the current shell −
echo $! # The process number of the last background command.


# variable
NAME="J"
#readonly NAME
#NAME="K"  # line XX: NAME: readonly variable
echo $NAME

unset NAME
echo $NAME # 输出空白

# read
echo "who are you"
#read NAME
echo "HELLO $NAME"

# overview
pwd

echo whoami
echo $(whoami)
