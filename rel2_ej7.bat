@echo off
rem %1 sera un directorio
rem %2 sera una extension

rem Buscamos en el directorio %1 los ficheros con esa extension
rem y los copiamos en el directorio TODO, luego lo mostramos


if not exist "C:\TODOS\" mkdir "C:\TODOS"

if "%1" == "" echo Se esperaba un directorio & exit 
if "%2" == "" echo Se esperaba una extension & exit

if not exist %1\ (
        echo %1 no es un directorio
        goto :EOF
)

dir %1\*.%2
    if errorlevel 1 (
        echo "%1" No contiene "%2"
    ) else (
        copy "%1" C:\TODOS
    )
