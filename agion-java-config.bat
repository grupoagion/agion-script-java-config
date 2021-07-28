@echo off
REM Um BAT que atualiza a configuracao do Java.
REM
REM
ECHO Verificando se pasta Sun já existe.
if exist %userprofile%\appdata\LocalLow\Sun goto remove_config
goto copy_config
REM
REM
:remove_config
ECHO Pasta Sun existe, removendo.
rm -r %userprofile%\appdata\LocalLow\Sun
ECHO Pasta Sun removida.
goto copy_config
REM
REM
:copy_config
ECHO Copiando configuracoes da pasta Sun.
Robocopy /S /E \\172.175.1.134\batt$\sun %userprofile%\appdata\LocalLow
ECHO Copiando completa.
goto end
REM
REM
:end
ECHO Fim do script.
Endlocal