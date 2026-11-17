# Kit Caso Práctico Git – Comedor Universitario UNAMBA

## Cómo usarlo
1. Descomprime el ZIP. Abre `comandos/variables.sh` y cambia tu usuario de GitHub, nombre, correo y la ruta de P4Merge.
2. Abre **Git Bash** (o la terminal de VS Code con Git Bash) dentro de la carpeta `comandos/`.
3. Ejecuta los scripts EN ORDEN con `./NOMBRE_DEL_SCRIPT.sh`.
   Cada script dice quién lo ejecuta: MASTER, NOMBRE, TEST o TODOS.
4. Antes: crea el repositorio VACÍO `comedor-universitario` en GitHub (sin README) y agrega a `nombre` y `test` en Settings → Collaborators.

| Orden | Script | Quién |
|---|---|---|
| 1 | 01_TODOS_configurar_git.sh | los tres |
| 2 | 02_MASTER_publicar_v1.0.sh | master |
| 3 | 03_NOMBRE_y_TEST_clonar.sh | nombre y test |
| 4 | 04_NOMBRE_menu_rama.sh | nombre |
| 5 | 05_MASTER_integrar_menu_v2.0.sh | master |
| 6 | 06_TEST_reservas_rama.sh | test |
| 7 | 07_MASTER_provocar_conflicto.sh | master (aparece el CONFLICT) |
| – | `git mergetool` (manual, P4Merge) | master |
| 8 | 08_MASTER_resolver_y_v3.0.sh | master |
| 9 | 09_NOMBRE_pagos_rama.sh | nombre |
| 10 | 10_MASTER_integrar_pagos_v4.0.sh | master |
| 11 | 11_MASTER_reportes_v5.0.sh | master |
| 12 | 12_MASTER_verificar.sh | master |

## Paso 7 manual: P4Merge
Tras el script 07 (el conflicto es lo esperado), ejecuta en la terminal, dentro de `comedor-universitario/`:

    git mergetool

- Captura 04: P4Merge recién abierto con el conflicto.
- Deja en "Merge result" estos valores: 4.50 / "11:30 - 14:30" / 80
  (referencia en `cambios_por_fase/fase7_resolucion_P4Merge/config.py`).
- Guarda con Ctrl+S, captura 05, y cierra P4Merge.
- Ejecuta el script 08.

## Evidencias (carpeta evidencias_git/)
01_repositorio_github.png · 02_colaboradores.png · 03_conflicto_terminal.png ·
04_p4merge_conflicto.png · 05_p4merge_resuelto.png · 06_historial_git.png
