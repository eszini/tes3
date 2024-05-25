#!/bin/bash

# Nombre del ejecutable por defecto
DEFAULT_EXEC="tes01"

# Si se proporciona un argumento, úsalo como nombre del ejecutable
EXEC=${1:-$DEFAULT_EXEC}

# Parámetros para la ejecución del programa
PARAMS="-prue=3"

# Ejecutar el comando
./$EXEC $PARAMS

