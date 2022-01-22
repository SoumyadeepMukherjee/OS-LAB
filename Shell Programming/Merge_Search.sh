```
Write a menu driven shell script for the following options:

(i) Merging the contents of two files into another.
(ii) Searching a pattern from a file.

If the user gives some invalid choice, it will prompt “Invalid option” message. 
```

read -p "Enter your choice" n
case $n in 
1)echo "Merging the contents of two files into another"
read -p "Enter the name of first file : " name1
read -p "Enter the name of second file : " name2
read -p "Enter the name of new file : " name3
cat $name1 $name2 > $name3
echo "The merged file is:"
cat $name3;;

2)echo "Searching a pattern from a file :"
read -p "Enter the name of file :" name4
read -p "Enter the pattern to be searched :" pattern
grep -i -n "$pattern" $name4 ;;

*)Invalid option;;
esac
