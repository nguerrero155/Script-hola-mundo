@echo off

if "%1" == "" echo Se esperaba un fichero & exit 

if not exist %1 (
    echo no existe el fichero introducido & exit
) 

for /f %%a in (%1) do (
    echo %%a 
    if not exist "%%a" (
        mkdir "%%a"
            if errorlevel 1 (
                echo ERROR: El directorio %%a no se ha podido crear 
            ) else (
                echo Se ha creado el directorio %%a 
            )
            
    ) else (
        echo El directorio %%a ya existe. 
    )

)