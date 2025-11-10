#!/bin/bash

# === 🎨 Colores ===
verde="\e[32m"
rojo="\e[31m"
azul="\e[34m"
amarillo="\e[33m"
reset="\e[0m"

clear
echo -e "${azul}🧼 LIMPIEZA DE SISTEMA PERSONALIZADA${reset}"
sleep 1

# === 📁 Pedir carpeta al usuario ===
echo -e "${amarillo}📂 Ingresá la ruta de la carpeta donde querés buscar archivos temporales o caché:${reset}"
read -p "👉 Carpeta: " carpeta
echo ""

# Verificar que exista
if [ ! -d "$carpeta" ]; then
    echo -e "${rojo}❌ Error: la carpeta no existe.${reset}"
    read -p "Presioná ENTER para salir..." _
    exit 1
fi

# === 🔍 Buscar archivos temporales y de caché ===
echo -e "${azul}🔎 Buscando archivos en ${carpeta}...${reset}"
sleep 1

archivos=$(find "$carpeta" -type f \( -name "*.tmp" -o -name "*.log" -o -name "*.cache" -o -name "*.dat" -o -name "*.txt" \))

if [ -z "$archivos" ]; then
    echo -e "${verde}✨ No se encontraron archivos temporales, de caché ni .txt.${reset}"
    read -p "🔙 Presioná ENTER para volver al menú..." _
    exit 0
fi

# === 📋 Mostrar archivos encontrados ===
echo ""
echo -e "${amarillo}📋 Archivos encontrados:${reset}"
echo "$archivos"
echo ""
read -p "⚠️ ¿Querés eliminar estos archivos? (s/n): " confirmar

# === 🧹 Borrar si confirma ===
if [[ "$confirmar" == "s" || "$confirmar" == "S" ]]; then
    cantidad=$(echo "$archivos" | wc -l)
    echo ""
    echo -e "${azul}🗑️ Eliminando $cantidad archivos...${reset}"
    find "$carpeta" -type f \( -name "*.tmp" -o -name "*.log" -o -name "*.cache" -o -name "*.dat" -o -name "*.txt" \) -delete
    echo ""
    echo -e "${verde}✅ Limpieza completada. Se eliminaron $cantidad archivos.${reset}"
else
    echo ""
    echo -e "${rojo}❌ Limpieza cancelada por el usuario.${reset}"
fi

echo ""
echo -e "${azul}📦 Proceso finalizado en la carpeta:${reset} $carpeta"
echo ""
read -p "🔙 Presioná ENTER para volver al menú..." _
