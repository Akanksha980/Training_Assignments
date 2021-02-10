#commenting-statement
#practice: Powershell logical operators
#Author: Akanksha
#platform- powerhsell ise -powered by windows
#------------script starts here----------
$a=10
$b=20
Echo "For OR operator"
($a-lt$b)-or($a-gt$b)

Echo "For AND operator"
($a-lt$b)-and($a-gt$b)

Echo "For NOT operator"
-not($a-lt$b)

Echo "for negation ! operator"
!($a-eq$b)

Echo "For XOR operqtor"
($a-eq$b)-or($a-lt$b)

