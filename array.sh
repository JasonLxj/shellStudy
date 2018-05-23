#!/bin/sh

NAME[0]="zhangsan"
NAME[1]="lisi"
NAME[2]="wangwu"
NAME[4]="maliu"

# kash
set -a ARRAY_NAME "zhangsan" "lisi" "wangwu" "maliu"

#bash
BASH_ARRAY=("bash1" "bash2" "bash3")

echo ${NAME[*]}

echo ${ARRAY_NAME[*]}
echo ${ARRAY_NAME[@]}

echo "--------================"
echo ${BASH_ARRAY[*]}#访问所有的元素
echo ${BASH_ARRAY[@]}

