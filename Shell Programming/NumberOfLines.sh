// Write a shell script that will display some desired number of lines starting from a specified line of a given file. User must interactively supply the file name, starting line number and number of lines to be displayed.


read -p "Enter the file name: " f1
cat $f1
read -p "Enter starting line: " a
read -p "Enter number of lines: " b
num=`expr $a + $b`
num=`expr $num - 1`
line=`expr $num - $a`
line=`expr $line + 1`
head -$num $f1 | tail -$line
