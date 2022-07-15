@echo off 

cd /d %~dp0
set "_ffprobe=C:\ffmpeg\bin\ffprobe.exe"
for /R %%I in (*.mp4)do @for /f eol^=^|delims^=. %%i  in ('
@"%_ffprobe%" -i "%%~fI" -show_entries format^=duration -v quiet ^
-of csv^="p=0" -sexagesimal^|findstr/e .[0-9]')do echo\"%%~nxI",'0%%~i>>".\file.csv"