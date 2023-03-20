rem INSTALANDO O AUTOPROXY
rem ======================

rem VARIAVEIS
rem =========
set folder_name=Autoproxy

rem CARREGANDO HIVE DO USUARIO PADRAO
rem =================================

reg LOAD "HKLM\AutoProxy" "%systemdrive%\Users\Default\NTUSER.DAT"

rem INSERINDO SCRIPT NA INICIALIZACAO DO USUARIO
rem ============================================

reg ADD "HKLM\AutoProxy\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "AutoProxy" /t "REG_EXPAND_SZ" /d "cmd /c %systemdrive%\%folder_name%\proxy.bat" /f

rem DESCARREGANDO HIVE
rem ==================

red UNLOAD "HKLM\AutoProxy"