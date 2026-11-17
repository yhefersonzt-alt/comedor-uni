#!/bin/bash
source "$(dirname "$0")/variables.sh"
# FASE 9 - Responsable: master
set -e
cd "$MASTER_DIR"
cp "$KIT/cambios_por_fase/fase9_master/reportes.py" reportes.py
git add .
git commit -m "Agrega reportes diarios (RF11)"
git tag -a v5.0 -m "Versión 5.0 - reportes diarios"
git push origin main --tags
