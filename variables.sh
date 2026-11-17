#!/bin/bash
# =====================================================
#  EDITA SOLO ESTE ARCHIVO ANTES DE EMPEZAR
# =====================================================
USUARIO_GITHUB="TU_USUARIO_GITHUB"          # usuario del dueño del repositorio (master)
MI_NOMBRE="Tu Nombre"                        # tu nombre
MI_CORREO="tu_correo@gmail.com"              # correo que usas en GitHub
P4MERGE_PATH="C:/Program Files/Perforce/p4merge.exe"

# --- No tocar ---
KIT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
REMOTO="${REMOTO:-https://github.com/$USUARIO_GITHUB/comedor-universitario.git}"
MASTER_DIR="$KIT/comedor-universitario"
