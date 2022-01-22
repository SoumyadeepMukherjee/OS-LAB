// Write a shell program to find factorial of given number.


read -p "Enter a number :" n
fact=1;

while [ $n -gt 1 ]
do
  fact=$((fact*n))
  n=$((n-1))
done
echo $fact
