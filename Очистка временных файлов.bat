@echo off
chcp 1251 > nul
echo Очистка временных файлов пользователя...> nul
del /q /s /f "%userprofile%\AppData\Local\Temp\*"
del /q /s /f "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*"
echo Очистка завершена> nul
cmd /c "msg * "Successfully!""