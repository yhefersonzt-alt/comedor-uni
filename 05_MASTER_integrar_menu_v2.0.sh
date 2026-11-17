#!/bin/bash
source "$(dirname "$0")/variables.sh"
# FASE 6 (parte master)
set -e
cd "$MASTER_DIR"
git fetch origin
git checkout main
git pull origin main
git merge origin/feature-menu
git tag -a v2.0 -m "Versión 2.0 - menú del día"
git push origin main --tags
