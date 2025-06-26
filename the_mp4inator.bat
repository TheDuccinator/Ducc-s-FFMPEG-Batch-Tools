@echo off

if [%1]==[] goto error

for %%a in (%*) do ffmpeg -i "%%~a" -c:v libx264 -crf 18 -preset slow -c:a copy "%%~a_reencoded.mp4"
goto good

:error
echo Erm what the sigma???
pause
goto leave

:good
echo Here's your reencoded MP4, noob. :P
pause

:leave

