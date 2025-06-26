@echo off

if [%1]==[] goto error

for %%a in (%*) do ffmpeg -i "%%~a" -vn -ar 48000 -ac 2 -b:a 320k "%%~a".mp3 
goto good

:error
echo Erm what the sigma???
pause
goto leave

:good
echo Here's your MP3, noob. :P
pause

:leave

