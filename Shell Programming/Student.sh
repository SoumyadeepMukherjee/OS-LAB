```
Create a file that contains the ROLL NUMBER, NAME, CITY of students of a class in sorted
order with respect to Roll Number. Now write a menu driven shell script that has the following
options:
a. Display the contents of whole file.
b. Display the information of a student with specific Roll Number supplied by the User.
c. Delete the entry of a student from the file with a specific Roll Number supplied by User.
d. Add a new entry in the file.
e. Update an entry of a student with a specific Roll Number supplied by the User.
```


read -p "Option: " option
case $option in
    1)
        cat A2Q10;;
    2)
        read -p "Roll no: " roll
        for i in `cat A2Q10`
        do
            if [ `cut -d "-" -f 1 <<< $i` == $roll ]
            then
                echo $i
            fi
        done;;
    3)
        read -p "Roll no: " roll
        filetxt=`cat A2Q10`
        > A2Q10
        for i in $filetxt
        do
            if [ `cut -d "-" -f 1 <<< $i` == $roll ]
            then
                continue
            else
                echo $i >> A2Q10
            fi
        done;;
    4)
        read -p "Roll no: " roll
        filetxt=`cat A2Q10`
        for i in $filetxt
        do
            if [ `cut -d "-" -f 1 <<< $i` == $roll ]
            then
                echo "This roll no. already exists..."
                exit
            fi
        done
        read -p "Name: " name
        read -p "City: " city
        flag=0
        > A2Q10
        for i in $filetxt
        do
            if [ `cut -d "-" -f 1 <<< $i` -lt $roll ]
            then
                echo $i >> A2Q10
            else
                if [ $flag -eq 0 ]
                then
                    echo "$roll-$name-$city" >> A2Q10
                    flag=1
                fi
                echo $i >> A2Q10
            fi
        done;;
    5)
        read -p "Roll no: " roll
        filetxt=`cat A2Q10`
        > A2Q10
        for i in $filetxt
        do
            if [ `cut -d "-" -f 1 <<< $i` == $roll ]
            then
                read -p "Name: " name
                read -p "City: " city
                echo "$roll-$name-$city" >> A2Q10
            else
                echo $i >> A2Q10
            fi
        done;;
    *)
        echo "Invalid option...";;
esac
