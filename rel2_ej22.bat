@echo off

if "%*" == "" echo Se esperaba un parametro
exit

type %1 | more

if %2 == o (
    sort %1
)

