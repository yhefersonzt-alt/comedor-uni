#!/bin/bash
source "$(dirname "$0")/variables.sh"
# FASE 7 (parte test) - la rama sale de v1.0, SIN el menú
set -e
cd "$KIT/clon/comedor-universitario"
git checkout -b feature-reservas v1.0
cp "$KIT/cambios_por_fase/fase7_test/config.py" config.py     # 4.50 / 11:30 - 14:30 / 80
cp "$KIT/cambios_por_fase/fase7_test/reservas.py" reservas.py
git add .
git commit -m "Agrega reservas y control de aforo"
git push -u origin feature-reservas
