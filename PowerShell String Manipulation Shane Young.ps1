
CommandLine                                                                                                            
-----------                                                                                                            
Start-Transcript                                                                                                       
Get-ChildItem                                                                                                          
Get-ChildItem | Where-Object {$_.Name.Contains("xbox")}                                                                
cls                                                                                                                    
Get-ChildItem | Where-Object {$_.Name.Contains("y.txt")} |ForEach-Object{rename-item $_ -newname $_.Name.replace("y....
Get-ChildItem | Where-Object {$_.Name.Contains("y.txt")} |ForEach-Object{rename-item $_ -newname $_.Name.replace("y....
$url = "https://mbspartner.microsoft.com/D365/Videos/101833"                                                           
$url = url.TrimStart("https://")                                                                                       
$url = $url.TrimStart("https://")                                                                                      
$url                                                                                                                   
$url = $url.TrimEnd($url.IndexOf("1"))                                                                                 
$url                                                                                                                   
$url.IndexOf("1"))                                                                                                     
$url.IndexOf("1")                                                                                                      
$hostname = $url.Substring(0,$url.IndexOf("1"))                                                                        
$hostname                                                                                                              
history                                                                                                                
get-history | Format-Table commandline > C:\Temp\history200102a.ps1                                                    
Stop-Transcript                                                                                                        
$var | Get-Member                                                                                                      
$Var = "I am a variable"...                                                                                            
$var | Get-Member  

Get-ChildItem | Where-Object {$_.Name.Contains("xbox")}

##Include all cases in the search by converting to Uppercase before search

## Replace string in a variable, replace extension .txt to .ps1
Get-ChildItem | Where-Object {$_.Name.Contains("y.txt")} | ForEach-Object{rename-item $_ -newname $_.Name.replace("y.txt","y.ps1")} 

## Return the web address of the URL elow

https://mbspartner.microsoft.com/D365/Videos/101833

## Show properties/members fof an object that is a variable
$Var = "I am a variable"
$var | Get-Member
                                                                                                    


