@echo off
chcp 1251 > nul

:: Выполняем команды скрипта

:: Отключаем диспетчер печати
echo Отключаем службу печати...> nul
net stop spooler

:: Удаляем все файлы из очереди печати
echo Очищаем очередь печати...> nul
del /q /s "%windir%\System32\spool\printers\*"

:: Включаем диспетчер печати
echo Включаем службу печати...> nul
net start spooler

cmd /c "msg * "Successfully!""



