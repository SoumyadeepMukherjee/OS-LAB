### grep (global regular expression print) Commands :

Consider the file *grepText.txt* containing the following lines:

```
I saw a lame man 
in a lane 
close to my door.
```

`grep “lan” grepText.txt` : Displays the line containing the pattern.    --- in a lane

`grep –i “LAne” grepText.txt` : Displays the line containing the pattern ignoring case.   --- in a lane

`grep –c “a” grepText.txt` : Displays number of lines containing the pattern.    --- 2

`grep –w “clo” grepText.txt` : Matches whole word only.     --- displays nothing.

`grep –w “close” grepText.txt` : Matches whole word only.   --- close to my door

`grep –o “close” grepText.txt` : Displays only the word.    --- Close

`grep –n “close” grepText.txt` : Displays matched line along with line number.  --- 3:close to my door

`grep –v “close” grepText.txt` : Displays unmatched lines.    --- I saw a lame man
                                                                  in a lane
                                                                  
`grep “^close” grepText.txt` : Displays matched line that begins with the given pattern.    --- close to my door

`grep “man$” grepText.txt` : Displays matched line that ends with the given pattern.     --- I saw a lame man

`grep -e "man" -e "close" grepText.txt` : Matching multiple patterns.      --- I saw a lame man
                                                                               close to my door.

