:<<EOF
题目要求

用shell打印下面这句话中字母数小于6的单词。 Bash also interprets a number of multi-character options.
核心要点

    for循环遍历所有单词
    wc -L获取字符串长度
EOF

#!/bin/bash
c="Bash also interprets a number of multi-character options."
n=`echo $c | awk -F ' ' '{print NF}'`
for i in `seq 1 $n`;do
    #l=`echo $c|awk -F ' ' '{print $i}'|wc -L`
    l=`echo $c | cut -d ' ' -f $i|wc -L`
    if [ $l -lt 6 ];then
       echo $c|awk -F ' ' -v j=$i '{print $j}'
    fi
done
