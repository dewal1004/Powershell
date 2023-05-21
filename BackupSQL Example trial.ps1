https://sqlbackupandftp.com/blog/powershell-how-to-backup-and-recover-an-sql-server-database-faq#install

#Sample backup Script from SQL
BACKUP DATABASE [Demo Database BC (14-0)] 
    TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL12.BCNAV\MSSQL\Backup\Demo Database BC (14-0).bak' 
    WITH NOFORMAT, NOINIT,  NAME = N'Demo Database BC (14-0)-Full Database Backup', 
    SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

#Sample Restore Script from SQL
USE [master]
RESTORE DATABASE [testDB] 
FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL12.BCNAV\MSSQL\Backup\Demo Database BC (14-0).bak' 
WITH  FILE = 1,  MOVE N'Demo Database BC (14-0)' 
TO N'C:\Program Files\Microsoft SQL Server\MSSQL12.BCNAV\MSSQL\DATA\testDB.mdf',  
MOVE N'Demo Database BC (14-0)_log' 
TO N'C:\Program Files\Microsoft SQL Server\MSSQL12.BCNAV\MSSQL\DATA\testDB_log.ldf',  
NOUNLOAD,  STATS = 5

GO


Backup-SqlDatabase -Database "[Demo Database BC (14-0)]" -ServerInstance ABIOLA-HP\BCNAV -BackupAction FULL

ServerName = ABIOLA-HP\BCNAV

#1 To install SQL Server Module
Install-Module -Name SqlServer
#2 To update SQL module
Update-Module -Name SqlServer

# To backup SQL DB to default backup location using PS
Backup-SqlDatabase -ServerInstance "." -Database "[Demo Database BC (14-0)]"
Backup-SqlDatabase -ServerInstance "ABIOLA-HP\BCNAV" -Database "Demo Database BC (14-0)"

# To backup SQL DB to a specific location
md "c:\sql\testDB.bak"
Backup-SqlDatabase -ServerInstance "ABIOLA-HP\BCNAV" -Database "testdb" -BackupFile "c:\sql\testDB.bak"

# To enable execution policy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned

#In order to execute the script, use the following command:
.\backup.ps1

# To pass parameters in a PowerShell script to backup an SQL Server Database
Param([Parameter(Mandatory=$true)][string]$databasename,[string]$path) Backup-SqlDatabase -ServerInstance "." -Database $databasename -BackupFile $path

#To invoke a PowerShell script and pass two parameters, use the following cmdlets:
.\backupparameter.ps1 testdb c:\sql\backuppar.bak

How to invoke an SQL Server script using PowerShell
First, we will create a script to backup a database using T-SQL named backup.sql:

BACKUP DATABASE [testdb] TO DISK = N'c:\sql\backuppar.bak'
Next, invoke the backup.sql script in PowerShell.

Invoke-Sqlcmd -InputFile "C:\sql\backup.sql" | Out-File -FilePath "C:\sql\results.out"

How to list all the databases to backup
You will need to change location in PowerShell:

Set-Location SQLSERVER:\SQL
Next, navigate to the location of the databases (use the dir command to check the object names):

cd server-name\default\databases>
Use a dir and you will list the SQL Server databases:

dir
To exclude a database that starts with SSIS, you can use the following cmdlet:

dir | Where-Object {$_.Name -notlike "SSIS*" }

How to backup all the databases using PowerShell
To back up all the databases move the database path (check the section 9 explained previously) and run the following command:

foreach ($database in (Get-ChildItem)) {
$dbName = $database.Name
Backup-SqlDatabase -Database $dbName -BackupFile "c:\sql\$dbName.bak" }

How to create a compressed backup using PowerShell
The following command will compress a backup created:

Backup-SqlDatabase -ServerInstance "." -Database "testdb -BackupFile "c:\sql\testDBcomp.bak" -CompressionOption On

How to restore an SQL Server database from a backup
The following cmdlet will show how to restore a database from a backup:

Restore-SqlDatabase -ServerInstance "." -Database "testDB" -BackupFile "c:\sql\testDB.bak"

How to backup an SQL Server transaction log with PowerShell
The following cmdlet allows to backup the transaction log:

Backup-SqlDatabase -ServerInstance "." -Database "testDB" -BackupAction Log
Conclusion
In this article, we learned how to create SQL Server backups using PowerShell scripts. PowerShell is a very useful tool to automate backup tasks. We learned how to create scripts, execute scripts, pass parameters, and backup multiple tables at the same time. We also learned how to restore a database from a backup. You can automate any tasks and with just one click you can create complex tasks in single or multiple scripts. It is also possible to integrate SQL Server with other tools using PowerShell like Azure, IIS, or automate tasks related to Windows and SQL Server or more.

I really hope you enjoy this article.



