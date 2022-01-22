// Write a shell script to print all possible combinations of 3 numbers.


read -p "Enter a number :" num
for((i=2;i>=0;i--))
do
   n=`expr $num % 10`
   arr[$i]=$n
   num=`expr $num / 10`
done
for((i=0;i<3;i++))
do
  for((j=0;j<3;j++))
  do
    for((k=0;k<3;k++))
    do
      if(((${arr[$i]}!=${arr[$j]}) && (${arr[$j]}!=${arr[$k]})&& (${arr[$i]}!=${arr[$k]})))
      then
          echo "${arr[$i]}${arr[$j]}${arr[$k]}" 
      fi
    done
  done
done   
