#!/bin/bash

# === 🎨 Colores ===
verde="\e[32m"
rojo="\e[31m"
azul="\e[34m"
amarillo="\e[33m"
reset="\e[0m"

clear
echo -e "${azul}🌀 Iniciando proceso de respaldo...${reset}"
sleep 1

# === 📁 Carpetas de origen y destino ===
origen="$HOME/Documentos/pruebas_backup"
destino="$HOME/backups"
mkdir -p "$destino"

# === 🕒 Crear nombre con fecha ===
fecha=$(date +%Y-%m-%d_%H-%M)
archivo="$destino/respaldo_$fecha.tar.gz"

# === 📦 Crear el backup ===
echo -e "${amarillo}📦 Creando backup...${reset}"
sleep 1
tar -czf "$archivo" "$origen" &> /dev/null

# === ✅ Verificar creación ===
if [ -f "$archivo" ]; then
    echo -e "\n${verde}✅ Backup creado exitosamente.${reset}"
    echo -e "📁 Guardado en: ${amarillo}$archivo${reset}"
else
    echo -e "\n${rojo}❌ Error: no se pudo crear el backup.${reset}"
    exit 1
fi

# === 🧹 Eliminar TODOS los backups antiguos y dejar solo el nuevo ===
cd "$destino" || exit
for viejo in respaldo_*.tar.gz; do
    if [ "$viejo" != "$(basename "$archivo")" ]; then
        rm -f "$viejo"
        echo -e "🗑️  Backup eliminado: ${rojo}$viejo${reset}"
    fi
done

# === 🕒 Mostrar mensaje final fijo ===
echo -e "\n${verde}✨ Proceso completado correctamente.${reset}"
echo -e "${azul}💾 Solo se conserva el backup más reciente.${reset}"
echo -e "${amarillo}📍 Ruta final del backup:${reset} $archivo"
echo -e "\nPresioná ${verde}ENTER${reset} para volver al menú..."
read
