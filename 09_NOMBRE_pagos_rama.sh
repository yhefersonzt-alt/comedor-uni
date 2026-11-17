#!/bin/bash
source "$(dirname "$0")/variables.sh"
# FASE 8 - Responsable: nombre
set -e
cd "$KIT/clon/comedor-universitario"
git checkout main
git pull origin main
git checkout -b feature-pagos
cp "$KIT/cambios_por_fase/fase8_nombre/pagos.py" pagos.py
git add .
git commit -m "Agrega pagos y ticket (RF06, RF07)"
git push -u origin feature-pagos
