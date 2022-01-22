```
Write a menu driven shell script for the following options:
(i) Number of presently active users
(ii) Displaying some desired number of lines from top of a file.
(iii) Updating the access time of a given file to current time.
(iv) If the user gives some invalid choice it will prompt “Invalid option” message.
```

read -p "Enter your choice :" n
case $n in
1) whoami;;
2) head -5 countries.txt;;
3) stat countries.txt
touch countries.txt
stat countries.txt;;
*)echo "Invalid Option";;
esac
