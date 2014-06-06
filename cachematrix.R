## A function, named makeCacheMatrix is created below, which caches the inverse of a matrix.

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
  	x<<-y
  	m<<-NULL
  }
  get <- function() x
  setmatrix <- function(solve) m<<- solve
  getmatrix <- function() m
  list(set = set, get = get,
   	setmatrix=setmatrix,
   	getmatrix=getmatrix)	
}

## The below function retrieves the inverse from the above cache function. If the inverse has already been calculated then the inverse is retrieved from the cache.

cacheSolve <- function(x, ...) {
         m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        matrix <- x$get()
        m <- solve(matrix, ...)
        x$solve(m)
        m

}
