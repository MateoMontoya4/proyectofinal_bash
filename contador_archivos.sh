#!/bin/bash

# === 🎨 Colores ===
verde="\e[32m"
rojo="\e[31m"
azul="\e[34m"
amarillo="\e[33m"
reset="\e[0m"

# === 📂 Contador de archivos y carpetas ===
clear
echo -e "${azul}╔══════════════════════════════════════╗${reset}"
echo -e "   📊 ${amarillo}CONTADOR DE ARCHIVOS Y CARPETAS${reset} 📊"
echo -e "${azul}╚══════════════════════════════════════╝${reset}"
echo ""

# Pedir la ruta de la carpeta
read -p "👉 Ingresá la ruta de la carpeta: " carpeta
echo ""

# Verificar que exista
if [ ! -d "$carpeta" ]; then
    echo -e "${rojo}❌ La ruta no existe. Verificá e intentá de nuevo.${reset}"
    read -p "Presioná ENTER para salir..." _
    exit 1
fi

# Contar archivos y carpetas
archivos=$(find "$carpeta" -type f | wc -l)
carpetas=$(find "$carpeta" -type d | wc -l)

# Mostrar resultados
echo -e "${amarillo}📂 Carpeta analizada:${reset} $carpeta"
echo -e "${verde}🗂️  Archivos: ${archivos}${reset}"
echo -e "${verde}📁 Carpetas: ${carpetas}${reset}"
echo ""

# Mostrar contenido (solo nombres)
echo -e "${azul}────────────────────────────────────────${reset}"
echo -e "${amarillo}Contenido de la carpeta:${reset}"
for item in "$carpeta"/*; do
    if [ -f "$item" ]; then
        echo -e "   📄 $(basename "$item")"
    elif [ -d "$item" ]; then
        echo -e "   📁 $(basename "$item")"
    fi
done
echo -e "${azul}────────────────────────────────────────${reset}"
echo ""
read -p "🔙 Presioná ENTER para volver al menú..." _
