#WIP!
#Replace Yoursignature.htm with the proper file name
$dom = $env:userdomain
$usr = $env:username
([adsi]"WinNT://$dom/$usr,user").fullname
[Environment]::UserName
(Get-Content .\Yoursignature.htm).replace('1mail1', [Environment]::UserName) | Set-Content .\Yoursignature.htm
(Get-Content .\Yoursignature.htm).replace('1naam1', ([adsi]"WinNT://$dom/$usr,user").fullname) | Set-Content .\Yoursignature.htm
#CREDITS
#http://serverfault.com/questions/582696/retrieve-current-domain-users-full-name
#http://stackoverflow.com/questions/2085744/how-to-get-current-username-in-windows-powershell