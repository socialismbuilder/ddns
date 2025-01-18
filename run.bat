@echo off
setlocal enabledelayedexpansion
chcp 65001 >nul 2>&1

:: 获取本地IPv4地址
for /f "tokens=2 delims=:" %%i in ('ipconfig ^| findstr /i "IPv4"') do (
    set ip=%%i
    goto :done
)
:done
set ip=%ip: =%
echo 获取到的本地IP地址: %ip%

:: 检查主HTML文件是否存在
if not exist ddns_tool.html (
    echo 错误：未找到 ddns_tool.html 文件！
    pause
    exit /b
)

:: 生成 redirect.html 文件
echo ^<meta http-equiv="refresh" content="0;url=ddns_tool.html?ip=%ip%"^> > "redirect.html"

:: 打开 redirect.html
start "" "file:///%cd%/redirect.html"

exit