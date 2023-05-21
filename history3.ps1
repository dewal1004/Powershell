

CommandLine : Get-PSDrive | Where-Object {$_.Free -gt 1} | ForEach-Object  {$Tot = 0; Write-Host} 
              {$_.Name + ": Used:" + ("{0:N2}" -f ($_.Used/1gb)) + "  Free:" + ("{0:N2}" -f 
              ($_.Free/1gb)) + " Total:" + ("{0:N2}" -f (($_.Used+$_.Free)/1gb)); $Tot = $Tot + 
              ($_.Free/1gb)} {Write-Host; Write-Host "Total Free Space :" ( "{0:N2}"-f $Tot) 
              -BackgroundColor magenta}



