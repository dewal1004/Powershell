
    
--$objUser = New-Object System.Security.Principal.NTAccount("North\graham.hutchinson")
--$strSID = $objUser.Translate([System.Security.Principal.SecurityIdentifier])
--$strSID.Value
-- Paste the above into powershell remove the -- at the start of each line
-- run the code and then copy the resulting SSID


--  Your SSID - with SSID as copied from powershell
-- After replacing all of the fields there should be nothing underlined in RED
-- Execute to run the script 

$objUser = New-Object System.Security.Principal.NTAccount("TSG\Abiola.Adewale")
$strSID = $objUser.Translate([System.Security.Principal.SecurityIdentifier])
$strSID.Value

 



