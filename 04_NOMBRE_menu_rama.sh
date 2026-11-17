#!/bin/bash
source "$(dirname "$0")/variables.sh"
# FASE 6 - Responsable: nombre
set -e
cd "$KIT/clon/comedor-universitario"
git checkout -b feature-menu
cp "$KIT/cambios_por_fase/fase6_nombre/config.py" config.py   # precio 4.00, horario 12:00 - 14:30
cp "$KIT/cambios_por_fase/fase6_nombre/menu.py" menu.py
git add .
git commit -m "Agrega menú del día (RF03)"
git push -u origin feature-menu
