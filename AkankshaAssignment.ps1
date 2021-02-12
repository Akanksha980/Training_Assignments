#Commenting-statement
#Powershell scripting
#demonstrating functions and loops
#platform-powershell ise ; powered by -Windows
#----------------------<><><><><><><><><>-------------------------
#----------------------script starts here-------------------------
#function1
function write_command
{
    echo "Welcome to Powershell Functions"
    echo "Windows os"
}

#invoke the function
#call the methods or function available in the program
#Invoking the function -write_command
write_command
#function2
function add
{
$ff=100
$ss=90
$df=$ff+$ss
echo $df
}
add

#function 3
function subtract
{
    [int] $gg= read-host "Enter first number"
    [int] $tt= read-host "Enter second number"
    $subb=$gg-$tt
    echo $subb
}
subtract

#function4
function matchopchk
{
    echo "checking for matching operator"
    $word1="powershell"
    $anword="powershell"
    ($word1-like$anword)
    ($word1-notlike$anword)
    ($word1-match$anword)
    ($word1-notmatch$anword)
}
matchopchk

#function5
function Get-square([int] $x)
{
   $resdd=$x * $x
   return $resdd
}
$x= read-host "Enter a value to find out square"
Get-square($x)
 
#function6
function OddEven([int] $num2)
{
    if($num%2 -eq 0)
    {
        echo "Even Number"
    }
    elseif($num%2 -ne 0)
    {
        echo "Odd Number"
    }
    else
    {
        echo "not a number"
    }
}
$num2= read-host "enter a number"
OddEven($num2)


echo "------<><><><><><><>---------"
#function7
echo "function to check the grade based on the percentage obtained"
function checkGrade([int] $percenta)
{
    if($percenta -gt 90)
    {
        Write-Output "Grade is : A " 
    }
    elseif($percenta -gt 80 -and $calc -le 90)
    {
        Write-Output "Grade is : B"
    }
    elseif($percenta -gt 60 -and $calc -le 80)
    {
        write-output "Grade is : C"
    }
    elseif($percenta -gt 45 -and $calc -le 60)
    {
        write-output "Grade is : D"
    }
    else
    {
        write-output "Grade is : F"
    } 
}
$percenta=read-host "Enter the percentage obtained"
checkGrade($percenta)

echo "----------------------------------------------"

#function8
function switchch([int] $gf)
{
    [int] $ad=read-host "Enter first number"
    [int] $da=read-host "Enter second number"
    
    switch($gf)
    {
        1{  $summ=$ad+$da    
            echo "Addition"    
            echo $summ 
         }
        2{ echo "Subtraction"
            $subt=$ad-$da
            echo $subt
         }
        3{ echo "Multiplication"
            $mull=$ad * $da
            echo $mull
          }
        4{ echo "Division"
            $divv=$ad/$da
            echo $divv
          }
    }
}
echo "1. addition  2. subtraction  3. multiplication  4. division" 
$gf= read-host "Enter your choice"
switchch($gf)

#function9
function tablprint([int] $bq)
{
    for($j=1; $j -lt 11; $j++)
    {
        $redf=$hh*$j
        echo $redf
    }
}
$bq= Read-Host "Enter a number whose table you want to print?"
tablprint($bq)  

#function10
function hashtbl
{
    $Employee=@{Eid=101; Ename="Aman Mittal"; Designation="Team Lead"; Salary=100000; city="New Delhi"}
    echo $Employee
    echo "----<>------"
    echo $Employee.Keys
    echo "----<>------"
    echo $Employee.Values
    echo "----<>------"
    echo $Employee.Count
    echo "----<>------"
    echo $Employee.IsReadOnly
    echo "----<>------"
    echo $Employee.IsFixedSize
    echo "----<>------"
    echo $Employee.IsSynchronized
}

#function 11
function strprint
{
    $jj= "A K A N K S H A"
    for($k=0; $k-le $jj.Length; $k++)
    {
        echo $jj[$k]
    }
}
strprint

#function 12
function  daychk([int] $day)
{
    switch($day)
    {
        1{Echo "the day is Sunday"}
        2{echo "the day is Monday"}
        3{echo "the day is Tuesday"}
        4{echo "the day is Wednesday"}
        5{echo "the day is Thursday"}
        6{echo "the day is Friday"}
        7{echo "the day is Saturday"}
    }
}
$day= read-host "Enter a number to check to which week day it corresponds"
daychk($day)

#function 13
function joinsplit
{
    -join "Windows","Operating","System"
    echo "----------<>----------"
    $string="Power"," Shell"," Scripting"," using"," join"
    -join $string
    echo "-----------<>---------"
    $a="Wind","SP","Ershell"
    $a -join "OW"
    -split "a k a n k s h a"
    -split "a,k,s,g"
    -split "a, k, s ,g"
    $b= "a=b=c=f=d"
    -split $b
    $b -split "="
    $b -split "=",3
}
joinsplit

#function14
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

#function15
function whlepal([int] $num9)
{
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
}
        
$num9=read-host "Enter the number for which you want to check if palindrome or not"
whlepal($num9)

#function16
function infinloop
{
    for($cc=1; $cc++)
    {
        if($cc -gt 0 )
        {
            echo "infinite loop"
            if($cc -eq 20)
            {
                echo "breaking this infinite loop"
                break
            }
        }
    }
}
infinloop

#function17
function freachdem
{
    $fruitss= @{ 'Mango'='Orange'
                  'Strawberry'='ReddishPink'
                  'Apple'='Red'
                  'Banana'='Yellow'
                  'grapes'='Green'
                }
                foreach($names in $fruitss)
                {
                    echo $names
                    echo "----------------"
                    echo $names.Keys
                    echo "----------------"
                    echo $names.Values
                }
}
freachdem

#function18
function reversefunc([int] $numi)
{
    $temp=$numi
    $rev=0
    $f=0
    while($numi -ne 0)
    {
        $remaindor= $numi%10                          
        $f=$f*10
        $reve= $f+ $remaindor
        $f=$reve
        $numi= $numi/10   
    }
    echo $reve
    
}
$numi=read-host "Enter the number you want to reverse"
reversefunc($numi)

#function 19
function lenstr
{
    [string] $hello=Read-Host "Enter a string: "
    $len= $hello.Length
    echo "Length of $hello is $len"
}
lenstr

#function 20
function factorial([int] $facto)
{
    $fact=1
    for($kil=1; $kil -le $facto; $kil++)
    {
        $fact=$fact*$kil
    }
    echo "Factorial of $facto is $fact"
}
$facto=read-host "Enter a number whose factorial is to be found"
factorial($facto)

#function 21
function leapyearchk([int] $year)
{
    if($year%4 -eq 0)
    {
        echo "$year is a leap year"
    }
    else
    {
        echo "$year is not a leap year"
    }
}
$year=read-host "Enter an year to check if it is a leap year or not"
leapyearchk($year)
              
#----------------------script ends here--------------------------
#-------------------------THANK YOU------------------------------