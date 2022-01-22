// Write a shell script to find the maximum and minimum of some given numbers.


read -p "Enter the number of elements: " n
echo "Enter the elements: "
for ((i=0;i<n;++i))
do
        read arr[$i]
done
max=-5
min=1000
for((i=0;i<n;i++))
do
  if [ ${arr[i]} -gt $max ]
  then
  max=${arr[i]}
  fi
done
echo "Max element is:" $max

for((i=0;i<n;i++))
do
  if [ ${arr[i]} -lt $min ]
  then
  min=${arr[i]}
  fi
done
echo "Min element is:" $min
