@echo off
for /f %%i in ('
 find /c /v ""^<"%AppData%\1C\1CEStart\ibases.v8i"
') do (
 set m=%%i
 )
for /f "delims=:" %%i in ('
 findstr /n $ "%AppData%\1C\1CEStart\ibases.v8i"
') do (
 set n=%%i
 )
if not %m%==%n% (
 echo.>>"%AppData%\1C\1CEStart\ibases.v8i"
 )
for %%i in (
	"[Бухгалтерия]"
	"Connect=File="\\DESKTOP-C25IL9F\Bases\БП" "
 ) do (
 echo %%~i>>"%AppData%\1C\1CEStart\ibases.v8i"
 )
exit /b