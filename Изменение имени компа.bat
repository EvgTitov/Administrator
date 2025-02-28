@echo off
chcp 1251 > nul

:: Запрос нового имени компьютера у пользователя

set /p comp_name="Select new computer name: "

:: Вывод текущего и нового имени для подтверждения

echo Current computer name: %computername%
echo The new computer name will be: %comp_name%

:: Переименование компьютера

wmic computersystem where name="%computername%" rename "%comp_name%"
pause

cmd /c "msg * "Restart you computer!""



