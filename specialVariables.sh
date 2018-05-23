#!/bin/sh
echo "File name: $0"
echo "First parameter: $1"
echo "second parameter: $2"
echo "quoted values: $@"
echo "quoted values: $*"
echo "total number of parameters: $#"


for TOKEN in $*
do
    echo $TOKEN
done

#The $? variable represents the exit status of the previous command.

echo "-----------------------"

ls
echo $?
lls
echo $?
