rem REMOVENDO PROXY DO SISTEMA
rem ==========================

reg ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "ProxyEnable" /t "REG_DWORD" /d "0x00000000" /f
reg DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "ProxyServer" /f
reg DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "ProxyOverride" /f