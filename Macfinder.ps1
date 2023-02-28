ARP.EXE -A | Out-File -FilePath 'C:\Program Files\APR' 
$index = 1
Get-Content 'C:\Program Files\APR' | ForEach-Object {"{0}||{1}" -f $index++, $_ }| Set-Content 'C:\Program Files\APR2'
$a = Get-content 'C:\Program Files\APR2'

#Promte User
$Mac = Read-Host -Prompt   'Input Last 4 Of Mac address: '
#Matches Input to Stored File
$Macip =  $F -replace "-","" | Findstr "$Mac" 


#Takes String With Mac and exstracts IP Adress
$string = $Macip
$ip = [regex]::match($string,"(\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b)").value

Write-Host $Macip
Write-Host $ip 

Pause
$t = 3
while ($t -ne 0) {
Write-Host $t
Start-Sleep -Seconds 1
$t = $t - 1
}
Remove-Item 'C:\Program Files\APR'
Remove-Item 'C:\Program Files\APR2'