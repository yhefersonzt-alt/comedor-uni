#!/bin/bash
source "$(dirname "$0")/variables.sh"
# FASE 7 - Ejecutar DESPUÉS de resolver y guardar en P4Merge
cd "$MASTER_DIR"
if grep -nE '^(<<<<<<<|=======|>>>>>>>)' config.py; then
  echo "ERROR: aún quedan marcadores de conflicto en config.py. Corrígelos y repite."; exit 1
fi
set -e
git add config.py
git add reservas.py
git commit -m "Resuelve conflicto en config.py"
git tag -a v3.0 -m "Versión 3.0 - reservas y aforo"
git push origin main --tags
