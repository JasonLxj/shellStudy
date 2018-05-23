#!/bin/sh

DATE=`date`
echo "date is $DATE"

USERS=`who | wc -l`
echo "Logged in user are $USERS"

UP=`date ; uptime`
echo "Uptome is $UP"
# uptime 查看当前系统负载运行时间

echo "+++++++++++++++++++++++++++++++++"

echo ${var:-"Variable is not set"}
echo "1 - value of var is ${var}"

echo ${var:="Variable is not set"}
echo "2 - value of var is ${var}"

unset var
echo ${var:+"Variable is not set"}
echo "3 - value of var is ${var}"

var="prefix"
echo @{var:+"variable is deault value"}
echo "4 - value of var is ${var}"

# unset var 如果这里unset var那么下面的执行就会出错,错误信息为 print this message
echo ${var:?"Print this message"}
echo "5 - value is ${var}"



