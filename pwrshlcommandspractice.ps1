Add-content powershellassign1.ps1
Start-service AppXSvc
Stop-service AppXSvc
$c='a'
echo $c
clear-variable c
echo $c
get-date
get-alias
get-alias s*
Add-content asd.txt
get-content asd.txt
get-location
test-path -path C:\WINDOWS\System32
test-path -path D:\WINDOWS\System32
get-item powershellassign1.ps1
get-itemproperty asd.txt
get-executionpolicy
RemoteSigned
get-service A*
get-service *dio*
get-process W*
clear-content asd.txt
get-childitem
get-childitem f*
get-command 
get-command a*
get-childitem
get-childitem f*
get-command 
get-command b*
new-item -path "D:\" -Name "TimeMachine" -ItemType "Directory"
new-item -path "D:\TimeMachine\sample.txt" -Value "This is a practice session"
new-item -path "D:\TimeMachine\sampl.txt" -ItemType "file" -Value "This is a practice session"
get-childitem -Path "D:\TimeMachine"
Add-content "D:\TimeMachine\sample.txt" -value "This is a sample.txt file. Welcome here."
copy-item "D:\TimeMachine\sample.txt" -Destination "D:\TimeMachine\power.txt"
move-item -path "D:\TimeMachine\power.txt" -Destination "D:\ppshll"
get-process
get-process | Sort-Object
&{write-warning "hello guys this is a warning"} 3>&1 > D:\TimeMachine\warn.txt





                                                                                          

 