#!/bin/bash

# === 🎨 Colores ===
verde="\e[32m"
rojo="\e[31m"
azul="\e[34m"
amarillo="\e[33m"
reset="\e[0m"

# === 🧹 Limpieza de sistema ===
clear
echo -e "${azul}🧼 Iniciando limpieza del sistema...${reset}"
sleep 1

# Carpetas simuladas o reales
temp="$HOME/descargas_temp"
cache="$HOME/cache_sistema"

# Crear las carpetas si no existen
mkdir -p "$temp" "$cache"

# Mostrar mensaje previo
echo -e "${amarillo}🌀 Buscando archivos temporales y caché...${reset}"
sleep 1

# Listar archivos a eliminar
archivos_temp=$(find "$temp" -type f)
archivos_cache=$(find "$cache" -type f)

# Eliminar archivos y mostrar resultados
if [ -n "$archivos_temp" ] || [ -n "$archivos_cache" ]; then
    echo ""
    echo -e "${azul}📂 Archivos eliminados:${reset}"
    echo -e "${amarillo}$archivos_temp${reset}"
    echo -e "${amarillo}$archivos_cache${reset}"
    find "$temp" -type f -delete
    find "$cache" -type f -delete
    echo ""
    echo -e "${verde}✅ Limpieza completada exitosamente.${reset}"
else
    echo ""
    echo -e "${rojo}❌ No se encontraron archivos para eliminar.${reset}"
fi

echo ""
echo -e "${azul}🧹 Directorios limpiados:${reset}"
echo -e "   - ${amarillo}$temp${reset}"
echo -e "   - ${amarillo}$cache${reset}"
echo ""
echo -e "${verde}✨ El sistema quedó limpio y ordenado.${reset}"

# Esperar antes de volver al menú
echo ""
read -p "🔙 Presioná ENTER para volver al menú..." _
