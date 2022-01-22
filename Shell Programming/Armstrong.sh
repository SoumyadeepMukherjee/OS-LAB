// Write a shell script to check for an Armstrong number.


read -p  "Enter a number: " n
t=$n
sum=0
r=0
p=0
while [ $t -gt 0 ]
do
r=`expr $t % 10`
p=`expr $r \* $r \* $r`
sum=`expr $sum + $p`
t=`expr $t / 10`
done
if [ $sum -eq $n ]
then
echo "$n is an Armstrong Number."
else
echo "$n is not an Armstrong Number."
fi
