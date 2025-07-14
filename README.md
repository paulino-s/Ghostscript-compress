# PDF Compressor con Ghostscript

Script de Windows para comprimir archivos PDF grandes utilizando Ghostscript.

## 📋 Descripción

Este script permite comprimir archivos PDF de gran tamaño manteniendo una calidad legible. Utiliza Ghostscript para reducir el tamaño del archivo mediante técnicas de compresión optimizadas.

## 🚀 Características

- ✅ Compresión eficiente de archivos PDF grandes
- ✅ Reducción significativa del tamaño (hasta 80% en algunos casos)
- ✅ Configuración optimizada para libros y documentos académicos
- ✅ Manejo de errores y validación de archivos
- ✅ Interfaz simple de línea de comandos

## 📦 Requisitos

- **Windows** (7/8/10/11)
- **Ghostscript** instalado en el sistema
  - Descarga: [https://www.ghostscript.com/download/gsdnld.html](https://www.ghostscript.com/download/gsdnld.html)
  - Asegúrate de que `gswin64c` o `gswin32c` esté en el PATH

## 📂 Instalación

1. Clona este repositorio:
```bash
git clone https://github.com/tuusuario/pdf-compressor.git
```

2. O descarga directamente el archivo `comprimir_compress.bat`

3. Instala Ghostscript si no lo tienes instalado

## 🔧 Uso

1. Ubica tu archivo PDF en la carpeta y posicionate, por ejemplo `Downloads, Documentos, etc`
2. Ejecuta el script:
```bash
comprimir_compress.bat
```

3. El archivo comprimido se guardará con el sufijo `_comprimido.pdf`

### Personalización

Para usar con otros archivos especificos, edita las rutas en el script:

```batch
set "INPUT_FILE=C:\Users\tuusuario\Downloads\tu_archivo.pdf"
set "OUTPUT_FILE=C:\Users\tuusuario\Downloads\tu_archivo_comprimido.pdf"
```

## ⚙️ Configuración

El script utiliza los siguientes parámetros de optimización:

- **Resolución de imágenes**: 150 DPI
- **Compresión**: `/screen` (máxima compresión)
- **Detección de imágenes duplicadas**: Activada
- **Compresión de fuentes**: Activada
- **Subconjunto de fuentes**: Activado

### Niveles de calidad disponibles:

- `/screen` - Máxima compresión (por defecto)
- `/ebook` - Calidad media
- `/printer` - Calidad de impresión
- `/prepress` - Calidad profesional

## 📊 Rendimiento

**Ejemplo de compresión:**
- Archivo original: 1.8 GB
- Archivo comprimido: ~200-400 MB
- Reducción: 70-80%
- Legible

## 🛠️ Solución de problemas

### Error: "Ghostscript no está instalado"
- Verifica que Ghostscript esté instalado
- Asegúrate de que esté en el PATH del sistema

### Error: "No se encontró el archivo"
- Verifica que el archivo PDF existe en la ruta especificada
- Comprueba que el nombre del archivo sea exacto (incluyendo acentos)

### El proceso es muy lento
- Es normal para archivos grandes (1GB+)
- El tiempo depende del tamaño del archivo y la velocidad del sistema

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Ver el archivo `LICENSE` para más detalles.

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Por favor:

1. Haz fork del proyecto
2. Crea una rama para tu feature (`git checkout -b feature/nueva-funcionalidad`)
3. Commit tus cambios (`git commit -am 'Añade nueva funcionalidad'`)
4. Push a la rama (`git push origin feature/nueva-funcionalidad`)
5. Abre un Pull Request

## 📞 Soporte

Si tienes problemas o preguntas:
- Abre un issue en GitHub
- Describe el problema y tu configuración del sistema

## 📚 Recursos adicionales

- [Documentación de Ghostscript](https://www.ghostscript.com/doc/)

---
