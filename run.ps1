Get-PSDrive -PSProvider Registry

Set-ItemProperty -Type DWord -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name HideFileExt -value "0"
Set-ItemProperty -Type DWord -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneExpandToCurrentFolder -value "1"
Set-ItemProperty -Type DWord -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneShowAllFolders -value "1"
Set-ItemProperty -Type DWord -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name LaunchTo -value "1"

Set-ItemProperty -Type DWord -Path HKCU:\SOFTWARE\Classes\CLSID\`{031E4825-7B94-4dc3-B131-E946B44C8DD5`} -Name System.IsPinnedToNameSpaceTree -value "1"

taskkill /f /im explorer.exe
start explorer.exe
