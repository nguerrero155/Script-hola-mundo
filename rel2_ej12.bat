@echo off
setlocal enabledelayedexpansion

if "%*" == "" echo Se esperaba un parametro & exit

rem %1 -> donde se hara la copia
rem %2, %3, etc, lo que se copiara

set primero=%1

for %%i in (%*) do (
    xcopy %%i %1 
)