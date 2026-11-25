Write-Host "Generating System Report..."

"System Information Report" | Set-Content report.txt

Get-Date | Out-File report.txt -Append

Get-Location | Out-File report.txt -Append

Get-CimInstance Win32_OperatingSystem |
Select-Object Caption, Version |
Out-File report.txt -Append

Get-Process |
Select-Object -First 5 Name, Id |
Out-File report.txt -Append

Write-Host "Report generated successfully!"