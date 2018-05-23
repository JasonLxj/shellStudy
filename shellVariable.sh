#!/bin/sh

#The name of a variable can contain only letters (a to z or A to Z), numbers ( 0 to 9) or the underscore character ( _)
#By convention, Unix shell variables will have their names in UPPERCASE.

# 变量名字和等号之间不能有空格
NAME="Jason" # Variables of this type are called scalar variables. A scalar variable can hold only one value at a time.

echo $NAME #To access the value stored in a variable, prefix its name with the dollar sign ($) 

#readOnly variable
READONLYNAME="readonly name"
readonly READONLYNAME
#READONLYNAME="haha"
#echo $READONLYNAME #./shellVariable.sh: line 14: READONLYNAME: readonly variable

UNSET_VAR="hello world"
echo "unset variable before= $UNSET_VAR"
unset UNSET_VAR # you can not user the unset command to unset c=variable that are marked readonly
echo $UNSET_VAR

# 变量类型
# 本地变量
# 环境变量 An environment variable is available to any child process of the shell. Some programs need environment variables in order to function correctly. Usually, a shell script defines only those environment variables that are needed by the programs that it runs.
# shell 变量 A shell variable is a special variable that is set by the shell and is required by the shell in order to function correctly. Some of these variables are environment variables whereas others are local variables.


echo "File Name: $0"
echo "First Parameter : $1"
echo "Second Parameter : $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters : $#"
