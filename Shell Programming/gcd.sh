// Write a shell program to find the gcd for the 2 given numbers.


gcd()
{
  if [ $1 -eq 0 -o $1 -eq $2 ]
  then
    return $2
  fi
  if [ $2 -eq 0 ]
  then
    return $1
  fi
  gcd $2 `expr $1 % $2`
}
gcd 105 35
echo $?
