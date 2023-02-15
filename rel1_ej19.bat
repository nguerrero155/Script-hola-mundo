@echo off

if "%1" == "" echo Se esperaba V/B & exit 
if "%2" == "" echo Se esperaba un fichero & exit

if not exist %1 (
    echo no existe el fichero introducido & exit
) else (
    if exist %2\* (
        echo Sintaxis incorrecta, %2 es un directorio & exit
    )
)

if "%1" == "V" (
    echo Visualizamos el contenido de %2
    echo:
    type %2
)

if "%2" == "B" (
    echo Visualizamos el contenido de %2
    echo:
    del %2
    echo Se ha borrado el archivo
)