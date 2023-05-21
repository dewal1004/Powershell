#import-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\140\Service\navAdminTool.ps1"
import-Module "C:\JJPPL\NAV80.51549\WindowsPowerShellScripts\Upgrade\HowTo\NAVUpgradeModule.ps1"

#Get-NAVAppRuntimePackage -ServerInstance BC140 -AppName 'ETB-Extension' -Version 1.0.1.57 -ExtensionPath 'C:\Users\Abiola.Adewale\OneDrive - Technology Services Group Ltd\Documents\AL\ETB\TSG_ETB-Extension_1.0.1.57 RUNTIME.app'

Compare-NAVApplicationObject -OriginalPath .\SOURCE -ModifiedPath .\MODIFIED -DeltaPath .\DELTA

 
