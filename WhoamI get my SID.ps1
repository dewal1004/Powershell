$objUser = New-Object System.Security.Principal.NTAccount("tsg\abiola.adewale")

$strSID = $objUser.Translate([System.Security.Principal.SecurityIdentifier])

$strSID.Value

#yOU will get the same value by running this at command prompt(elevated) */cls

whoami /user