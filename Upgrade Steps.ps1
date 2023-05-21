## Upgrade procedure

##Task 1: Create full SQL backup of old database

##Task 2 Uninstall all extensions in old database
## 2.1  To get a list of the extensions that are installed, run this command:
$ServerInstanceName = 'BC180'
Get-NAVAppInfo -ServerInstance $ServerInstanceName -Tenant default
Get-NAVAppInfo -ServerInstance 'DynamicsNAV80' -Tenant default

## 2.2  For each extension, run this command to uninstall it:
Uninstall-NAVApp -ServerInstance <ServerInstanceName> -Name <Name> -Version <N.N.N.N>
## Alternately, to remove them all at once, you can run this command:
Get-NAVAppInfo -ServerInstance <ServerInstanceName> -Tenant default | % { Uninstall-NAVApp -ServerInstance <ServerInstanceName> -Name $_.Name -Version $_.Version }
## The above relates to version with extension installed on them. 

##Upload Dev/Partner license on the Old DB
##Delete all objects except the tables
finsql.exe command=deleteobjects, servername=TestComputer01\NAVDEMO, database="Demo Database NAV (10-0)", filter="Type=Table|Codeunit;ID=500..1000"






  

