#!/bin/bash
echo "*cmd meau**  1 - date 2 - ls 3 - who 4 - pwd"
read -p "Please input a number: " n
#检测输入是否为空
if [ -z "$n" ];then
   echo "1.请输入一个纯数字，范围1-4."
   exit
fi
#检测输入中除1-4数字外是否含有其他字符
n1=`echo $n|sed 's/[1-4]//g'`
if [ -n "$n1" ]
then
    echo "2.请输入一个纯数字，范围1-4."
    exit
fi

case $n in
    1)
        date
        ;;
    2)
        ls
        ;;
    3)
        who
        ;;
    4)
        pwd
        ;;
    *)
       echo "3.请输入1-4的数字"
       ;;
esac
