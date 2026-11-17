#!/bin/bash
source "$(dirname "$0")/variables.sh"
# Verificación final -> captura 06
cd "$MASTER_DIR"
git log --oneline --graph --decorate --all
echo; git tag
