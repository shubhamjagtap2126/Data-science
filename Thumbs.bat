@Echo off


for %%i in (*.mp4) do ffmpeg -ss 00:00:10 -i "%%i" -vframes 1 -q:v 2 "%%~ni.jpeg"