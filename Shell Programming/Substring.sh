// Write a shell program to find the position of substring in given string.


read -p "Enter the string:" str1
l1=`echo $str1 | wc -c`
l1=`expr $l1 - 1`
read -p "Enter sub string:" substr
l2=`echo $substr | wc -c`
l2=`expr $l2 - 1`
n=1
m=1
pos=0
while [ $n -le $l1 ]
do
a=`echo $str1 | cut -c $n`
b=`echo $substr | cut -c $m`
if [ "$a" == "$b" ]
then
n=`expr $n + 1`
m=`expr $m + 1`
pos=`expr $n - $l2`
r=`expr $m - 1`
if [ $r -eq $l2 ]
then
break
fi
else
pos=0
m=1
n=`expr $n + 1`
fi
done
echo "Position of sub string in given string is" $pos
