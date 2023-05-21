import-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\140\Service\navAdminTool.ps1"
Import-Module "C:\Program Files\Microsoft Dynamics NAV\70CU58\Service\navAdminTool.ps1"
Import-Module "${env:ProgramFiles(x86)}\Microsoft Dynamics NAV\80\RoleTailored Client\Microsoft.Dynamics.Nav.Model.Tools.psd1" -force

UnInstall-NavApp -ServerInstance ETB-UAT -Name "ETB-Extension" -Version 1.0.1.56
Unpublish-NavApp -ServerInstance ETB-UAT -Name "ETB-Extension" -Version 1.0.1.56

Publish-NAVApp -ServerInstance ETB-UAT -Path "C:\TSG\extension\AA\TSG_ETB-Extension_1.0.1.46.app" -SkipVerification
Sync-NAVApp -ServerInstance ETB-UAT -Name "ETB-Extension" -Version 1.0.1.46

Start-NAVAppDataUpgrade -name "ETB-Extension" -ServerInstance BC140

Sync-NAVTenant -ServerInstance ETB-UAT


Get-NAVAppInfo -ServerInstance ETB-UAT -SymbolsOnly

##UAT
import-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\140\Service\navAdminTool.ps1"
UnInstall-NavApp -ServerInstance ETB-UAT -Name "ETB-Extension" -Version 1.0.1.56
Unpublish-NavApp -ServerInstance ETB-UAT -Name "ETB-Extension" -Version 1.0.1.56
publish-navapp -serverinstance ETB-UAT -Path 'C:\TSG\extension\AA\TSG_ETB-Extension_1.0.1.57 RUNTIME.app' -Skipverification


Install-NAVApp -ServerInstance ETB-UAT -Name "ETB-Extension" -Version 1.0.1.57
Sync-NAVApp -ServerInstance ETB-UAT -Name "ETB-Extension" -Version 1.0.1.57
Start-NAVAppDataUpgrade -name "ETB-Extension" -ServerInstance ETB-UAT -Version 1.0.1.57

##LIVE
import-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\140\Service\navAdminTool.ps1"
UnInstall-NavApp -ServerInstance ETB-LIVE -Name "ETB-Extension" -Version 1.0.1.56
Unpublish-NavApp -ServerInstance ETB-LIVE -Name "ETB-Extension" -Version 1.0.1.56
publish-navapp -serverinstance ETB-LIVE -Path 'C:\TSG\extension\AA\TSG_ETB-Extension_1.0.1.57 RUNTIME.app' -Skipverification
#Install-NAVApp -ServerInstance ETB-LIVE -Name "ETB-Extension" -Version 1.0.1.57
Sync-NAVApp -ServerInstance ETB-LIVE -Name "ETB-Extension" -Version 1.0.1.57
Start-NAVAppDataUpgrade -name "ETB-Extension" -ServerInstance ETB-LIVE -Version 1.0.1.57

##ICFL Upgrade
Publish-NAVApp -ServerInstance BusinessCentral140 -Path 'C:\TSG_Temp\Apps\TSG_ICFL_BC14_14.0.0.1.app' -SkipVerification
Install-NAVApp -ServerInstance BusinessCentral140 -Name "ICFL_BC14" -Version 14.0.0.1
Sync-NAVApp -ServerInstance BusinessCentral140 -Name "ICFL_BC14" -Version 14.0.0.1 
Start-NAVAppDataUpgrade -name "ICFL_BC14" -ServerInstance BusinessCentral140 -Version 14.0.0.1

