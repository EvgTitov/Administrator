@echo off
chcp 1251 > nul

If Exist %USERPROFILE%\AppData\Roaming\1C (
rem Удаляем все файлы в Win 7 8 10
Del /F /Q %USERPROFILE%\AppData\Roaming\1C\1cv8*.*
Del /F /Q %USERPROFILE%\AppData\Local\1C\*.*

rem Удаляем все каталоги в Win 7 8 10
for /d %%i in ("%USERPROFILE%\AppData\Roaming\1C\1cv8*") do rmdir /s /q "%%i"
for /d %%i in ("%USERPROFILE%\AppData\Local\1C\*") do rmdir /s /q "%%i"
)

echo Кэш 1С успешно очищен!!>nul
pause
