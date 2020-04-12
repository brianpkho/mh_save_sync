#requires -RunAsAdministrator
#requires -Modules ScheduledTasks
if ($(Get-ScheduledTask -TaskName "Monster Hunter Save" -ErrorAction SilentlyContinue).TaskName -eq "Monster Hunter Save") {
    Unregister-ScheduledTask -TaskName "Monster Hunter Save" -Confirm:$False
}
$user = "$env:USERDOMAIN\$env:USERNAME"
$scriptPath = '"C:\\Program Files (x86)\\Steam\\userdata\\99757097\\582010\\remote\\save.ps1"'
$Trigger =  New-ScheduledTaskTrigger -Daily -At "12:00pm"
$Principal = New-ScheduledTaskPrincipal -UserID "$env:USERDOMAIN\$env:USERNAME" -LogonType S4U -RunLevel Highest
$action = New-ScheduledTaskAction -Execute "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -Argument "-NoProfile -executionpolicy bypass -file $scriptPath -force"
Register-ScheduledTask -TaskName "Monster Hunter Save" -Trigger $Trigger -Principal $Principal -Action $Action -Force