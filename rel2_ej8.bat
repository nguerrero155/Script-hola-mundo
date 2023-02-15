@echo off
if not exist C:\COPIA (mkdir C:\COPIA)


rem set /p pidefichero="Introduce el fichero donde deseas buscar: "
set /p pidecadena="Introduce la cadena que deseas buscar: "


rem find %pidecadena% < C:\Users\Nadia\ASO\%pidefichero% 

rem copy "%pidefichero%" C:\COPIA

for %%i in ("C:\Users\Nadia\ASO\*") do (
    find "%pidecadena%" < "%%i" 
)
   
