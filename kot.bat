@echo off

if "%1" == "" (
    echo Usage: kot filename.kt
    pause
    exit
)

set filename=%1
set filename=%filename:.kt=.jar%
kotlinc %1 -include-runtime -d %filename% && (
    echo compile success!
    echo.
    java -jar "%filename%"
)&& (
    del "%filename%"
    echo.
    echo jarfile DELETE!)


