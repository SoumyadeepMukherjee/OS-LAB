// Write a shell script to implement Bubble Sort. Print the contents of the sorted array without using any loop.


read -p "Enter the number of elements: " n
echo "Enter the elements: "
for ((i=0;i<n;++i))
do
        read arr[$i]
done
echo "Array in original order"
echo ${arr[*]} 
  
# Performing Bubble sort  
for ((i = 0; i<n; i++)) 
do
      
    for((j = 0; j<n-i-1; j++)) 
    do
      
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ] 
        then
            # swap 
            temp=${arr[j]} 
            arr[$j]=${arr[$((j+1))]}   
            arr[$((j+1))]=$temp 
        fi
    done
done
echo "Array in sorted order :"
echo ${arr[*]}
