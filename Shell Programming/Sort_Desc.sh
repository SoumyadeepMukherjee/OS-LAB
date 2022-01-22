// Write a shell script to sort some given numbers in descending order.


read -p "Enter the number of elements: " n
echo "Enter the elements: "
for ((i=0;i<n;++i))
do
        read arr[$i]
done
echo "Array in Original Order"
echo ${arr[*]} 

#Insertion sort
for((i=0;i<n-1;i++))
do
  for((j=i+1;j>0;j--))
  do
    if [ ${arr[j]} -gt ${arr[$((j-1))]} ]
    then
      temp=${arr[j]} 
      arr[$j]=${arr[$((j-1))]}   
      arr[$((j-1))]=$temp 
    fi
  done
done      
  
echo "Array in Sorted Order"
echo ${arr[*]}
