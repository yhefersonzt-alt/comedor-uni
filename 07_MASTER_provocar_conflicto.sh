#!/bin/bash
source "$(dirname "$0")/variables.sh"
# FASE 7 - Responsable: master. AQUÍ DEBE APARECER EL CONFLICTO (es lo esperado)
cd "$MASTER_DIR"
git checkout main
git pull origin main
git fetch origin
git merge origin/feature-reservas
echo
echo ">>> TOMA LA CAPTURA 03 (mensaje CONFLICT) AHORA <<<"
echo ">>> Luego ejecuta:  git mergetool"
