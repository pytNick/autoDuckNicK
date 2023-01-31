$imgURL = "https://imgur.com/TUwv8kH.jpg"
			Invoke-WebRequest -Uri $imgURL -OutFile $env:TEMP\PSLockScreenWallpaper.jpg
			Copy-Item $env:TEMP\PSLockScreenWallpaper.jpg "C:\Windows\System32\LockScreen.jpg" -Force
			Write-Host "Creating registry path $("HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP")."
			New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP" -Force | Out-Null
			New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP" -Name "LockScreenImageStatus" -Value "1" -PropertyType DWORD -Force | Out-Null
        	New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP" -Name "LockScreenImagePath" -Value C:\Windows\System32\LockScreen.jpg -PropertyType STRING -Force | Out-Null
        	New-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP" -Name "LockScreenImageUrl" -Value C:\Windows\System32\LockScreen.jpg -PropertyType STRING -Force | Out-Null
