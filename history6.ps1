
CommandLine                                                                                            
-----------                                                                                            
Get-PSDrive | Where-Object {$_.Free -gt 1} | ForEach-Object  {$Tot = 0; Write-Host} {$_.Name + ": Us...
Get-History -count 1 | Format-List CommandLine > C:\Temp\history3.ps1                                  
Get-History -count 1 | Format-List CommandLine                                                         
Get-History -count 10 | Format-List CommandLine                                                        
Get-History -count 10 | Format-List CommandLine > C:\Temp\history4.ps1                                 
Stop-Transcript                                                                                        
Get-Volume                                                                                             
Start-Transcript                                                                                       
Get-Volume                                                                                             
Get-ChildItem                                                                                          
Get-ChildItem | Where-Object {$_.Name.Contains("history")}                                             
Get-ChildItem | Where-Object {$_.Name.Contains("dll")}                                                 
Get-ChildItem | Where-Object {$_.Name.Contains("xbox")}                                                
Get-ChildItem | Where-Object {$_.Name.Contains("xbox")}                                                
history                                                                                                


