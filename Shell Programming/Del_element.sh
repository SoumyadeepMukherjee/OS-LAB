// Write a shell script to delete an element from a specific position of an array.


a=(Today is Monday)
read -p "Enter a position from 0 to 3: " num
echo "Before deletion: "
echo ${a[*]}
delete=(${a[$num]})
for i in "${delete[@]}"; do
  for j in "${!a[@]}"; do
    if [[ ${a[j]} = $i ]]; then
      unset 'a[j]'
    fi
  done
done
echo "After deletion: "
echo ${a[*]}
