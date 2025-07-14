@echo off
chcp 65001 >nul
echo Comprimiendo PDF con Ghostscript...
echo.

REM Configurar rutas por ejemplo Downloads
set "INPUT_FILE=C:\Users\tuusuario\Downloads\ejemplo.pdf"
set "OUTPUT_FILE=C:\Users\tuusuario\Downloads\ejemplo_comprimido.pdf"

REM Verificar que el archivo existe
if not exist "%INPUT_FILE%" (
    echo ERROR: No se encontró el archivo
    pause
    exit /b 1
)

echo Archivo: ejemplo.pdf
echo Comprimiendo...
echo.

REM Comprimir con Ghostscript a 130 dpi
gswin64c -sDEVICE=pdfwrite ^
    -dCompatibilityLevel=1.4 ^
    -dPDFSETTINGS=/screen ^
    -dNOPAUSE ^
    -dQUIET ^
    -dBATCH ^
    -dDetectDuplicateImages=true ^
    -dCompressFonts=true ^
    -dSubsetFonts=true ^
    -dColorImageDownsampleType=/Bicubic ^
    -dColorImageResolution=130 ^
    -dGrayImageDownsampleType=/Bicubic ^
    -dGrayImageResolution=130 ^
    -dMonoImageDownsampleType=/Bicubic ^
    -dMonoImageResolution=130 ^
    -sOutputFile="%OUTPUT_FILE%" ^
    "%INPUT_FILE%"

if errorlevel 1 (
    echo ERROR: Falló la compresión
    pause
    exit /b 1
)

echo.
echo ¡Compresión completada!
echo Archivo guardado como: ejemplo_comprimido.pdf
echo.

pause
