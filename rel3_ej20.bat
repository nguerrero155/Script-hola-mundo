rem @echo off
:inicio
set /p cambio = Introduzca la palabra que desea cambiar: 
echo:
echo Eliga la opción que desea
echo 1: Cambiar a Mayúsculas
echo 2: Cambiar a Minúscula

echo %cambio%
set /p opcion= Opcion:  

if "%opcion%" == "" echo Se necesita algun valor & goto inicio

if "%opcion%" == "1" goto opcion1
rem if "%opcion%" == "2" goto opcion2

:opcion1
IF (%cambio%)==() GOTO:EOF
SET STRING=%STRING:a=A%
SET STRING=%STRING:b=B%
SET STRING=%STRING:c=C%
SET STRING=%STRING:d=D%
SET STRING=%STRING:e=E%
SET STRING=%STRING:f=F%
SET STRING=%STRING:g=G%
SET STRING=%STRING:h=H%
SET STRING=%STRING:i=I%
SET STRING=%STRING:j=J%
SET STRING=%STRING:k=K%
SET STRING=%STRING:l=L%
SET STRING=%STRING:m=M%
SET STRING=%STRING:n=N%
SET STRING=%STRING:o=O%
SET STRING=%STRING:p=P%
SET STRING=%STRING:q=Q%
SET STRING=%STRING:r=R%
SET STRING=%STRING:s=S%
SET STRING=%STRING:t=T%
SET STRING=%STRING:u=U%
SET STRING=%STRING:v=V%
SET STRING=%STRING:w=W%
SET STRING=%STRING:x=X%
SET STRING=%STRING:y=Y%
SET STRING=%STRING:z=Z%
echo tu dato en mayuscula: %STRING%
pause
goto inicio
 


