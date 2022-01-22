// Write a shell program to count number of words, characters, white spaces and special symbols in a given text.


echo "Enter a String"

read text

# Counting words
word=$(echo -n "$text" | wc -w)

# Counting characters
char=$(echo -n "$text" | wc -c)

#counting space
space=$(expr length "$text" - length `echo "$text" | sed "s/ //g"`)

# Counting special characters
special=$(expr length "${text//[^\~!@#$&*()]/}")

echo "Number of Words = $word"
echo "Number of Characters = $char"
echo "Number of White Spaces = $space"
echo "Number of Special symbols = $special"
