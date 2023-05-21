#Importing modules into PS
Import-Module -Name <<NameofModule>>

#Not sure of the name or import multiple module e.g. if PowerCLI is all ou can remember
Get-Module -listavailable -Name '*PowerCLI'
Get-Module -listavailable -Name '*Nav*'
Get-Module -listavailable 

#To import the listed module pipe it to import
Get-Module -listavailable -Name '*PowerCLI' |Import-Module

#if you know the name and the path then use, add -verbose to see what is happening
Import-Module -Name <Path\nameofmodule.ps1>

#Check if you have right to execute PS
Get-ExecutionPolicy

#To grant unrestricted Execution policy
Set-ExecutionPolicy -executionpolicy Unrestricted -Force

#The path below should be in double quote ""
Import-Module "C:\Program Files\Microsoft Dynamics NAV\90\Service\NavAdminTool.ps1" 

Compare-Object -?

Get-Help Compare-Object -Online

Import-Module "c:\Users\Abiola.Adewale\.vscode\extensions\jamespearson.al-test-runner-0.5.2\PowerShell\ALTestRunner.psm1" -DisableNameChecking
