#Funci??n makeCacheMatrix: Se encarga de crear un objeto ???matriz??? especial, puede retener el c??lculo de su inversa
makeCacheMatrix <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

#Funci??n cacheSolve: Se encarga de calcular la inversa del objeto ???matriz??? especial que la funci??n makeCacheMatrix devuelve
#Si la inversa ya ha sido calculada (y la matriz no ha cambiado), entonces cacheSolve devuelve el mensaje
#El valor ya ha sido calculado y retenido ???en el cach?????.

cachesolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(m)) {
    message("El valor ya ha sido calculado y retenido en el cache")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}

#Creaci??n de una matriz de 1000000 elementos con valores entre 1 y 9  
#Es una matriz cuadrada de 1000 columnas por 1000 renglones 
m <- matrix(sample(1:9,1000000,replace=T),nrow=1000,ncol=1000)
#m <- matrix(sample(1:9,100000000,replace=T),nrow=10000,ncol=10000)

#Tiempo de ejecuci??n de calculo de la inversa de la matriz.
system.time(solve(m))

#Asignaci??n de la funci??n  makeCacheMatrix a la variable x. 
x<-makeCacheMatrix(m)

#Tiempo de ejecuci??n de la funci??n cachesolve.
system.time(cachesolve(x))
system.time(cachesolve(x))

