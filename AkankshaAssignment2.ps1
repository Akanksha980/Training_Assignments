echo "---------------------<><><><><>-------------------"
[int] $maths1= Read-host "Enter the marks obtained in maths"
echo "---------------------<><><><>-------------------"
[int] $english1= read-host "Enter the marks obtained in english"
echo "---------------------<><><><>-------------------"
[int] $computer1 =read-host "Enter the marks obtained in computer science"
echo "---------------------<><><><>-------------------"
[int] $chemistry1=read-host "Enter the marks obtained in chemistry"
echo "---------------------<><><><>-------------------"
[int] $physics1=read-host "Enter the marks obtained in physics"
$res1= $maths1+$chemistry1+$english1+$computer1+$physics1
$calc1= $res1/50
echo "  "
switch($calc1)
{
    10{ echo "Grade is A+" }
    9{ echo "Grade is A"}
    8{ echo "Grade is B+"}
    7{ echo "Grade is B"}
    6{ echo "Grade is C+"}
    5{ echo "Grade is C"}
    4{ echo "Grade is D"}
    3{ echo "Grade is E"}
    2{ echo "Grade is F. FAIL"}
    1{ echo "Get lost you are fail."}
}