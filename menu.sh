#!/bin/bash

# === 🎨 Colores ===
verde="\e[32m"
rojo="\e[31m"
azul="\e[34m"
amarillo="\e[33m"
reset="\e[0m"

# === 🧭 Menú principal ===
while true; do
    clear
    echo -e "${azul}╔══════════════════════════════════════════════╗${reset}"
    echo -e "       🔧   ${amarillo}MENÚ PRINCIPAL DE SCRIPTS${reset} 🔧"    
    echo -e "${azul}╚══════════════════════════════════════════════╝${reset}"
    echo ""
    echo -e "${verde}[1]${reset} 📦  Hacer backup de directorio"
    echo -e "${verde}[2]${reset} 🧹  Limpiar sistema (archivos temporales y caché)"
    echo -e "${verde}[3]${reset} 📂  Contar archivos y carpetas de una carpeta"
    echo -e "${verde}[4]${reset} 🚪  Salir"
    echo ""
    echo -e "${azul}──────────────────────────────────────────────${reset}"
    read -p "👉 Elegí una opción (1-4): " opcion
    echo ""

    case $opcion in
        1) bash backup.sh ;;
        2) bash limpiar_sistema.sh ;;
        3) bash contador_archivos.sh ;;
        4) echo -e "${rojo}👋 Saliendo del programa...${reset}"; sleep 1; exit 0 ;;
        *) echo -e "${rojo}⚠️  Opción inválida, intentá de nuevo.${reset}"; sleep 2 ;;
    esac
done
