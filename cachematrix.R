## Functions that cache the inverse of a matrix

## Function to create matrix that caches its inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
        x <<- y
        i <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse)i <<- inverse
  getInverse <- function()i
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## Calculate the inverse of the matrix evaluated by "makeCacheMatrix"

cacheSolve <- function(x, ...) {
        i <- x$getInverse()
        if (!is.null(i)) {message ("getting cached data")
          return (i)
        }
        data <- x$get()
        i <- solve(data)
        x$setInverse(i)
        i
}
