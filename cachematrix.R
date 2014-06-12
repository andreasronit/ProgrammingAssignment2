## A function, named makeCacheMatrix ,is created below which caches the inverse of a matrix.

makeCacheMatrix <- function(x = matrix()) {
  x.inv <- NULL
  set<-function(y){
  	x<<-y
  	x. inv <<-NULL
  }
  get <- function() x
  setinverse <- function(inverse) x.inv<<- inverse
  getinverse <- function() m
  list(set = set, get = get,
   	setinverse=setinverse,
   	getinverse=getinverse)	
}

## The below function retrieves the inverse of a matrix created from the above cachematrix function. 
#If the inverse has already been calculated then the inverse is retrieved from the cache.

cacheSolve <- function(x, ...) {
        x.inv <- x$getinverse()
        if (!is.null(x.inv)) {
                message("getting cached data")
                return(x.inv)
        } else {
          x.inv <- x$get()
          x.inv <- solve(matrix, ...)
          x$solve(x.inv)
          return (x.inv)
        }
}
