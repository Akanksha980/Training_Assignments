#commenting-statement
#practice: Powershell comparison operators
#Author: Akanksha
#platform- powerhsell ise -powered by windows
#------------script starts here----------

$a=10
$b=20
Echo "checking for eqal operator"
($a-eq$b)
Echo "checking for not eqal operator"
($a-ne$b)
Echo "checking for greater than operator"
($a-gt$b)
Echo "checking for less than operator"
($a-lt$b)
echo "checking for matching operator"
$word1="powershell"
$anword="powershell"
($word1-like$anword)
($word1-notlike$anword)
($word1-match$anword)
($word1-notmatch$anword)

echo "checking for Containment operator"
($word1-contains$anword)
($word1-notcontains$anword)
($word1-in$anword)
($word1-notin$anword)
echo "------------------------------------"

echo ">>>><<<<<<"
echo "checking for type comparison"
($word1-is$anword)
($word1-isnot$anword)


