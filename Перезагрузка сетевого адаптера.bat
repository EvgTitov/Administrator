@echo off
							::Ethernet 2 - меняем в зависимости от названия своего адаптера в винде
chcp 1251 > nul


echo Перезагрузка сетевого адаптера...> nul
netsh interface set interface "Ethernet 2" admin=DISABLED
timeout /t 2
netsh interface set interface "Ethernet 2" admin=ENABLED
echo Адаптер успешно перезапущен> nul
pause

