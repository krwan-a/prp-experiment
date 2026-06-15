@echo off
REM 复制素材到在线实验目录

set SRC=C:\Users\a2171\Desktop\刺激材料
set DST=C:\Users\a2171\Desktop\实验程序_在线版\assets

echo 正在复制图片文件...
copy "%SRC%\含T矩阵\*.png" "%DST%\images\含T矩阵\" /Y
copy "%SRC%\无T矩阵\*.png" "%DST%\images\无T矩阵\" /Y
copy "%SRC%\数字刺激\*.png" "%DST%\images\数字刺激\" /Y

echo 正在复制音频文件...
copy "%SRC%\*.mp3" "%DST%\audio\" /Y

echo 全部复制完成!
pause
