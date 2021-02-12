#Assignment for if-else if given on 10/02/2021
#platform- powershell ise , powered by :Windows
#Author:- Akanksha
echo "---------------------<><><><><>-------------------"
[int] $maths= Read-host "Enter the marks obtained in maths"
echo "---------------------<><><><>-------------------"
[int] $english= read-host "Enter the marks obtained in english"
echo "---------------------<><><><>-------------------"
[int] $computer =read-host "Enter the marks obtained in computer science"
echo "---------------------<><><><>-------------------"
[int] $chemistry=read-host "Enter the marks obtained in chemistry"
echo "---------------------<><><><>-------------------"
[int] $physics=read-host "Enter the marks obtained in physics"
$res= $maths+$chemistry+$english+$computer+$physics
$calc= $res/5
echo "  "
if($calc -gt 90)
{
    Write-Output "Grade is : A " 
}
elseif($calc -gt 80 -and $calc -le 90)
{
    Write-Output "Grade is : B"
}
elseif($calc -gt 60 -and $calc -le 80)
{
    write-output "Grade is : C"
 }
 elseif($calc -gt 45 -and $calc -le 60)
 {
    write-output "Grade is : D"
 }
 else
 {
    write-output "Grade is : F"
 }    

