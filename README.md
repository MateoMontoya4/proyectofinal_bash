# 💻 Proyecto de Automatización en Bash

## 🧠 Descripción breve del proyecto
Este proyecto fue desarrollado como parte del trabajo final de la materia de **Sistemas Operativos**.  
Consiste en una serie de **scripts Bash** que automatizan tareas básicas del sistema.  
Incluye un **menú principal con colores y emojis** que facilita la ejecución de cada script de manera simple y visual.

Los scripts disponibles son:
- 📦 **backup.sh** → Crea una copia comprimida de seguridad de un directorio.  
- 🧹 **limpiar_sistema.sh** → Elimina archivos temporales y limpia la caché del sistema.  
- 📂 **contador_archivos.sh** → Cuenta la cantidad de archivos y carpetas dentro de un directorio.  
- 🔧 **menu.sh** → Permite acceder fácilmente a todas las funciones anteriores desde un menú interactivo.

---

## ▶️ Instrucciones de uso y ejemplos

### 🔹 Requisitos
- Tener instalado **Bash** (Linux, macOS o WSL en Windows).  
- Dar permisos de ejecución a los scripts con:
  ```bash
  chmod +x *.sh
  🔹 Ejecución

Abrir una terminal en la carpeta del proyecto.

# Ejecutar el menú principal con:
  ```bash
./menu.sh
  ```

Elegir una de las opciones que aparecen:

[1] 📦  Hacer backup de directorio  
[2] 🧹  Limpiar sistema  
[3] 📂  Contar archivos y carpetas  
[4] 🚪  Salir  

🔹 Ejemplo de uso

Si se elige la opción 3, el script pedirá una ruta de carpeta y mostrará cuántos archivos y subcarpetas contiene.
El resultado se muestra en pantalla con colores y emojis para hacerlo más legible.

# 🤝 Cómo colaborar con el proyecto

Si querés colaborar o mejorarlo:

Hacé un fork del repositorio.

Creá una nueva rama para tus cambios:
  ```bash
git checkout -b mi-mejora
  ```

Subí tus cambios y hacé un pull request para revisión.

# 📜 Licencia

Este proyecto se distribuye bajo la licencia MIT, lo que significa que podés usarlo, modificarlo y compartirlo libremente, siempre que se incluya el aviso de copyright original.
