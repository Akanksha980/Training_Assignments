#commenting-statement
#practice: Powershell Hash table
#Author: Akanksha
#platform- powerhsell ise -powered by windows
#------------script starts here----------

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
