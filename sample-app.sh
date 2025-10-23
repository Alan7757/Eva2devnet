#!/bin/bash

# --- INICIO DE LIMPIEZA ---
# Detener el contenedor anterior (si existe). 2>/dev/null suprime el error si no existe.
docker stop samplerunning 2>/dev/null || true
# Eliminar el contenedor anterior.
docker rm samplerunning 2>/dev/null || true
# --- FIN DE LIMPIEZA ---

# El resto del script sigue aquí (mkdir, echo Dockerfile, docker build, etc.)
# ...
# Y al final:
docker run -t -d -p 6666:6666 --name samplerunning sampleapp
