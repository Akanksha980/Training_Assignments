#powershell scripting practice
#Platform - Windows ISE
#Author- Akanksha Singhal
#-----------------------script start here----------------------------
#to check if the age entered by a person is adult or not
[int] $g= read-host "Enter the age of a person: "
if($g -lt 18)
{
    echo "Not Adult"
}
elseif($g -gt 18)
{
    echo "Already an adult"
}
else
{
    echo "Just became an adult"
}

#checking if a number entered by the user is prime or not
[int] $num= read-host "Enter a number to check prime or not? "
$flag=1
for($i=2; $i -lt $num; $i++)
{
    if($num%$i -eq 0)
    {
        echo "Not prime"
        ++$flag
        break
    }
}
if($flag -eq 1)
{
    echo "Prime number"
}

#calculator using switch case
[int] $num1= read-host "Enter the first number"
[int] $num2= read-host "Enter the second number"
[int] $choice= read-host "Enter you choice: 1. Addition     2. Subtraction      3.Multiplication      4. Modulus        5. Division"
switch($choice)
{
    1{ $res=$num1+$num2
        echo "Addition of $num1 and $num2= $res" }
    2{ $res1=$num1-$num2
        echo "Subtraction of $num1 and $num2= $res1" }
    3{ $res2= $num1*$num2
        echo "Multiplication of $num1 and $num2= $res2"}
    4{ $res3=$num1%$num2
        echo "Modulus of $num1 and $num2= $res3" }
    5{ $res4=$num1/$num2
        echo "Division of $num1 and $num2= $res4" }
}

#to calculate the sum of n natural numbers
function sumofnnums([int] $num5)
{
    $summ=1
    for($z=1; $z-le$num5; $z++)
    {
        $summ=$summ+$z
    }
    echo "Sum of $num5 natural numbers is: " $summ
}
$num5=read-host "Enter the number uptil which you want to find the sum"
sumofnnums($num5)

#to check if entered number is palindrome or not
$n=$num9
    $rev=1
    $re=1
    while($num9 -ne 0)
    {
        $rem= $num9%10
        $re=$re * 10 
        $rev= $re+ $rem
        $re=$rev
        $num9= $num9/10
    }
    if($rev -eq $n)
    {
        echo "Palindrome Number"
    }
    else
    {
        echo "Not palindrome"
    }


$vege= @{ 'cabbage'='green'
                  'brinjal'='purple'
                  'cucumber'='dark green'
                  'carrot'='red'
                  'raddish'='white'
                }
                foreach($names in $vege)
                {
                    echo $names
                    echo "----------------"
                    echo $names.Keys
                    echo "----------------"
                    echo $names.Values
	}