# Instituto Politécnico Nacional
# Unidad Interdisciplinaria de Ingeniería y Ciencias Sociales y Administrativas
# Sección de Estudios de Posgrado e Investigación

## Maestría en Ciencias en Informática

### Almacenamiento de Datos y su Administración

### Fabián Ramírez Galindo

### Tarea 8
### Elementos Avanzados de R

#### Descripción

Este _repositorio_ ha sido creado con la función de servir de práctica en la realizacion de actividades de familiarización en el uso de servicios y herramientas para el control de versiones.

Objetivo  
La finalidad de esta tarea es familiarizar al alumno con ideas sobre la optimización de cálculos consumidores de tiempo aprovechando las reglas de alcance sintáctico de R para preservar y aprovechar la preservación del estado de los objetos creados en éste.

Desarrollo

1. El script consta de la función makeCacheMatrix, la función crea un objeto "matriz" especial que puede retener el cálculo de su inversa.
2. Existe la función cacheSolve, la cual calcula la inversa del objeto "matriz" especial que la función makeCacheMatrix devolverá. Si la inversa ya ha sido calculada (y la matriz no ha cambiado), entonces cacheSolve devuelve el valor ya calculado y retenido "en el caché".
3. El _script_ en R es llamdo **cachematrix.R**.
