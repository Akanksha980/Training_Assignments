#!/bin/bash
#to print the number entered by user
#author- Akanksha
#--------------script starts here------------

read -p "We request the user to please enter a number? " num
echo " "
echo "The number entered by user is num=  $num"

#pattern and pyramid printing script
#pattern printing using  for ((cond1; cond2; cond3))

read -p "Enter a number upto which you want to print the pattern" n
for ((i=0;i<$n;i++))
do
	for ((j=0;j<=$i;j++))
	do
		echo -ne "$j ";
	done
	echo;
done

#pyramid pattern
echo " "
rows=5
for((i=1; i<=rows; i++))
do
  for((j=1; j<=rows - i; j++))
  do
    echo -n "  "
  done
  for((j=1; j<=2*i - 1; j++))
  do
    echo -n "* "
  done
  echo
done

#bash script for swapping two numbers
read -p "Enter the value for a: " a
read -p "Enter the value for b: " b
echo " the value of a is : $a"
echo "the value of b is : $b"
temp=$a
a=$b
b=$temp

echo "After swapping the values of a and b are: "
echo "a= $a"
echo "b= $b"

#to compute the quotient and remaindor of a number
read -p "Enter a number to compute its quotient and remaindor ? " number
read -p "Enter a number with whom you want to divide the number ? " div
quotient=$((number/div))
rem=$((number%div))

echo " "
echo "The quotient and remainder obtained when $number is divided by $div are: -"
echo "Quotient= $quotient"
echo "Remainder= $rem"

#to check if a numbner is positive or negative
read -p "Enter a number to check if it is positive or negative" num
echo " "
echo "num= $num"
if [ $num -ge 0 ]
then
	echo "$num is a positive number"
else
	echo "$num is a negative number"
fi

#to check if a number is prime or not
read -p "Enter a number to check if it is prime or not: " num
for ((i=2; i<=num/2; i++))
do
  if [ $((num%i)) -eq 0 ]
  then
    echo "$num is not a prime number."
    exit
  fi
done
echo "$num is a prime number."


#to find the factorial of a number
read -p "Enter a number whose factorial is to be found" num
fact=1
for((i=1;i<=num;i++))
do
	fact=$((fact*i))
done
echo "Factorial of $num is : $fact "


#Bash script to add two matrix
matrix1=(1 2 3 4 5 6 7 8 9) #Matrix of size 3 by 3
matrix2=(21 22 23 24 25 26 27 28 29 ) #Matrix of size 3 by 3
rows=3
cols=3
echo "First matrix"
for((i=0; i<rows; i++))
do
  for((j=0; j<cols; j++))
  do
    index=$((i*cols+j))
    echo -n "${matrix1[index]} "
  done
  echo
done
 
echo "Second matrix"
for((i=0; i<rows; i++))
do
  for((j=0; j<cols; j++))
  do
    index=$((i*cols+j))
    echo -n "${matrix2[index]} "
  done
  echo
done
 
k=0
matrix3=()
for((i=0; i<rows; i++))
do
  for((j=0; j<cols; j++))
  do
    index=$((i*cols+j))
    matrix3[k]=$((${matrix1[index]} + ${matrix2[index]}))
    k=$((k+1))
  done
done
echo "Addition of two matrix"
for((i=0; i<rows; i++))
do
  for((j=0; j<cols; j++))
  do
    index=$((i*cols+j))
    echo -n "${matrix3[index]} "
  done
  echo
done


#Bash script to find transpose of a matrix
matrix1=(1 2 3 4 5 6 7 8 9)
rows=3
cols=3
echo "Matrix"
for((i=0; i<rows; i++))
do
  for((j=0; j<cols; j++))
  do
    index=$((i*cols+j))
    echo -n "${matrix1[index]} "
  done
  echo
done
 
for((i=0; i<rows; i++))
do
  for((j=i+1; j<cols; j++))
  do
    index1=$((rows*i + j))
    index2=$((rows*j + i))
    temp=${matrix1[index1]}
    matrix1[index1]=${matrix1[index2]}
    matrix1[index2]=$temp
  done
done
 
echo "Transpose of a matrix"
for((i=0; i<rows; i++))
do
  for((j=0; j<cols; j++))
  do
    index=$((i*cols+j))
    echo -n "${matrix1[index]} "
  done
  echo
done

#to print square root of a number
read -p "Enter a number: " number
square_root=`echo "scale=4; sqrt($number)" | bc`
echo "Square Root of $number is $square_root"


#to calculate the area of the triangle
read -p "Enter the first side: " a
read -p "Enter the second side: " b
read -p "Enter the third side: " c
s=`echo "scale=4; ($a+$b+$c)/2" | bc`
area=`echo "scale=4; sqrt($s*($s-$a)*($s-$b)*($s-$c))" | bc`
echo "The area of the triangle is:  $area"

#to calculate the area of the rectangle
read -p "Enter the length of the rectangle" len
read -p "Enter the breadth of the rectangle" bre

area=$((len*bre))
echo " "
echo "Length of rectangle = $len"
echo "Breadth of the rectangle is= $bre"
echo "Area of the rectangle is=  $area"

#to convert Celcius to Fahrenheit
read -p "Enter degree celsius temperature: " celsius
fahrenheit=`echo "scale=4; $celsius*1.8 + 32" | bc`
echo "$celsius degree celsius is equal to $fahrenheit degree fahrenheit"

#to convert fahrenheit to celcius
read -p "Enter degree fahrenheit temperature: " fahrenheit
celsius=`echo "scale=4; ($fahrenheit - 32) / 1.8" | bc`
echo "$fahrenheit degree fahrenheit is equal to $celsius degree celsius"

#To get list of all users in linux
echo "List of users in linux"
 getent passwd

#to get list of all groups in the linux
echo " "
echo "List of all groups in linux"
getent group