# Instituto Polit�cnico Nacional
# Unidad Interdisciplinaria de Ingenier�a y Ciencias Sociales y Administrativas
# Secci�n de Estudios de Posgrado e Investigaci�n

## Maestr�a en Ciencias en Inform�tica

### Almacenamiento de Datos y su Administraci�n

### Fabi�n Ram�rez Galindo

### Tarea 8
### Elementos Avanzados de R

#### Descripci�n

Este _repositorio_ ha sido creado con la funci�n de servir de pr�ctica en la realizacion de actividades de familiarizaci�n en el uso de servicios y herramientas para el control de versiones.

Objetivo  
La finalidad de esta tarea es familiarizar al alumno con ideas sobre la optimizaci�n de c�lculos consumidores de tiempo aprovechando las reglas de alcance sint�ctico de R para preservar y aprovechar la preservaci�n del estado de los objetos creados en �ste.

Desarrollo

1. El script consta de la funci�n makeCacheMatrix, la funci�n crea un objeto "matriz" especial que puede retener el c�lculo de su inversa.
2. Existe la funci�n cacheSolve, la cual calcula la inversa del objeto "matriz" especial que la funci�n makeCacheMatrix devolver�. Si la inversa ya ha sido calculada (y la matriz no ha cambiado), entonces cacheSolve devuelve el valor ya calculado y retenido "en el cach�".
3. El _script_ en R es llamdo **cachematrix.R**.
