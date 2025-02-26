rem stopping windows update service
sc stop wuauserv

rem disabling WU autostart
sc config wuauserv start=disabled


cmd /c "msg * "Successfully!""

