function Show-MainMenu {
	param (
		
	)
	Clear-Host
	Write-Host -NoNewLine -ForegroundColor Green 'Username: '
	Write-Host $env:USERNAME
	Write-Host -NoNewLine -ForegroundColor Green 'Computername: '
	Write-Host $env:COMPUTERNAME
	Write-Host -NoNewLine -ForegroundColor Green 'Windows Edition: '
	Get-WmiObject win32_operatingsystem | ForEach-Object caption
	Write-Host -NoNewLine -ForegroundColor Green 'Windows Version: '
	(Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion').ReleaseId
	
	Write-Host @"

===== Options: =====
	1) Lock Screen
	...
	q) Quit
 
"@
}
do {
	Show-MainMenu
	$key = $Host.UI.RawUI.ReadKey()
	switch ($key.Character) {
	
	'1' {
		# code here
	}
			pause
} until($key.Character -eq 'q')
