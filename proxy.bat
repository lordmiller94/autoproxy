rem VARIAVEIS
rem =========

set proxy_address=000.000.000.000
set proxy_address_port=8080
set proxy_override="<local>"

rem EXECUTANDO A CONFIGURACAO NO REGISTRO
rem =====================================

reg ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "ProxyEnable" /t "REG_DWORD" /d "0x00000001" /f
reg ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "ProxyServer" /t "REG_SZ" /d "%proxy_address%:%proxy_address_port%" /f
reg ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "ProxyOverride" /t "REG_SZ" /d %proxy_override% /f