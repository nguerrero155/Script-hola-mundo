@echo off
setlocal enabledelayedexpansion
set /p pidedir="Introduce el directorio donde deseas buscar: "
set /p pidecadena="Introduce la cadena que deseas buscar: "

if "%pidedir%" == "" (
    echo mal vacio
) 
if not exist %pidedir%\ (
        echo %pidedir% no es un dir
        goto :EOF
)
if not exist C:\COPIA\ (
    mkdir C:\COPIA
    if errorlevel 1 (
        echo ERROR: & exit 
    )
)   


for %%i in ("!pidedir!\*") do (
    findstr "!pidecadena!" "%%i" >nul
    if errorlevel 1 (
        echo "%%i" No contiene "!pidecadena!"
    ) else (
        copy "%%i" C:\COPIA
    )
)

