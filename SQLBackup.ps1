## SQL Server backup
## Check is module exist
Get-Module -Name SqlServer

##if moduel does not exist then To install, 
Install-Module -Name SqlServer

$credential = Get-Credential
$Instance = Get-SqlInstance
$DB = Get-SqlDatabase

##Backup-SqlDatabase -ServerInstance Computer[\Instance] -Database <myDatabase> -BackupAction Database -Credential $credential
Backup-SqlDatabase -ServerInstance Computer[\Instance] -Database <myDatabase> -BackupAction Database -Credential $credential

