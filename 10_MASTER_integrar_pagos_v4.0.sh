#!/bin/bash
source "$(dirname "$0")/variables.sh"
# FASE 8 (parte master)
set -e
cd "$MASTER_DIR"
git fetch origin
git checkout main
git pull origin main
git merge origin/feature-pagos
git tag -a v4.0 -m "Versión 4.0 - pagos y ticket"
git push origin main --tags
