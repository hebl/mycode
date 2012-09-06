#
#1. 截取字符变量的前8位，有方法如下

expr substr "$a" 1 8
echo $a|awk '{print substr(,1,8)}'
echo $a|cut -c1-8
echo $
expr $a : '\(.\\).*'
echo $a|dd bs=1 count=8 2 > /dev/null

#
#2. 按指定的字符串截取
#2.1
${varible##*string}	#从左向右截取最后一个string后的字符串
${varible#*string}	#从左向右截取第一个string后的字符串
${varible%%string*}	#从右向左截取最后一个string后的字符串
${varible%string*}	#从右向左截取第一个string后的字符串

# "*"只是一个通配符可以不要

#2.2 ${varible:n1:n2}:截取变量varible从n1到n2之间的字符串
# 可以根据特定字符偏移和长度，使用另一种形式的变量扩展，来选择特定子字符串。试着在 bash 中输入以下行：
EXCLAIM=cowabunga
echo ${EXCLAIM:0:3}	#cow
echo ${EXCLAIM:3:7}	#abunga

#
#3. 按照指定要求分割
#ex. 比如获取后缀名
ls -al | cut -d "." -f2

#
#4. 字符串长度
expr length $x
expr "$x":".*"

#
#5. 查找之串
expr index $x "s"

#
#6. 截取子串
expr substr "$x" 1 5

