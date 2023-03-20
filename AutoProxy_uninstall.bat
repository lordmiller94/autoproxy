rem CARREGANDO HIVE DO USUARIO PADRAO
rem =================================

reg LOAD "HKLM\AutoProxy" "%systemdrive%\Users\Default\NTUSER.DAT"

rem REMOVENDO VALOR DO REGISTRO DO USUARIO
rem ======================================

reg DELETE "HKLM\AutoProxy\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "AutoProxy" /f

rem DESCARREGANDO HIVE
rem ==================

red UNLOAD "HKLM\AutoProxy"