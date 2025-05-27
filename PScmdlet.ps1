#show-command
#Get-Service
#Get-ComputerInfo
#Get-Process
#Get-Process -Name wlms
#Start-Service -Name wecsvc
#Restart-Service -Name wuauserv
#Get-EventLog
#Start-service -Name wuauserv
#clear
#Get-Service
Get-Process | Where-object {$_.CPU -gt 1} | Sort-Object CPU -Descending | Select-object Name
Get-Process | Where-object {$_.CPU -gt 1} | Sort-Object CPU -Descending | Select-object Name, CPU

write-output " Get-Process : Get-Process |  Where-object {$_.CPU -gt 1} | Sort-Object ID  -Descending "

#Get-Process | out-file  C:\Users\admin\Downloads\wiprofiledws\aa.txt
#Get-NetIPConfiguration | out-file C:\Users\admin\Downloads\wiprofiledws\netfileipconfig
Get-PSDrive
Get-PSDrive -PSProvider FileSystem | out-file C:\Users\admin\Downloads\wiprofiledws\datafile.text -Append
Get-Command | out-file C:\Users\admin\Downloads\wiprofiledws\datafile.text
Get-ChildItem | out-file C:\Users\admin\Downloads\wiprofiledws\Demofile.txt
Get-Hotfix | Get-Member
Get-Hotfix |Select-object -property InstallBy | out-file C:\Users\admin\Downloads\wiprofiledws\Demofile.txt -Append
Get-Date | Get-Member | out-file C:\Users\admin\Downloads\wiprofiledws\datefile.txt
Get-Date | Select-Object -Property TmeofDay
Get-Date | Select-Object -Property Second

#help rule
Get-NetFirewallRule | out-file C:\Users\admin\Downloads\wiprofiledws\IPfirewallconfig.txt
Get-NetIPConfiguration | out-file C:\Users\admin\Downloads\wiprofiledws\netfileipconfig

Get-Service | Where Status -ne Running
Get-Service | Where Status -ne Running | out-file C:\Users\admin\Downloads\wiprofiledws\Demofile.txt
Get-process | Where CPU -gt 100

Get-Service | ForEach Status
Get-Service | ForEach Displayname

Get-EventLog -List
Get-EventLog -List | Where Log -eq 'System'

$name = Read-Host "Please Enter Name"
write-output " Hello, $name!"

    $name = "john"
    $age = 22
    "My name is {0} ANd I am {1} years old" -f $name,$age


#Formatting
Get-Process | Sort-Object CPU -Descending | Select-Object -First 5 | Format-Table Name, CPU

Get-Service | Format-List -

    $fruits = "banana", "apple"
    $fruits[0]
    $fruits+= "kiwi"
    $fruits[2]

    $age = 22
if ($age -ge 18) {
   write-Host "Age is greater"
}

$age = 25
if ($age -ge 18) {
  write-Host "Adult"
}elseif($age -ge 13){
  write-Host "Teenager"
}else{
    write-Host "Child"
}

   
$day = "Monday"
switch ($day) {
    "Monday" {Write-Host "Start of the week" }
    "Friday" {write-Host "End of the week" }
    default {write-Host "Mid of the week" }
}
