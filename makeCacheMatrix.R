makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  #Set inverse of the matrix to variable i
  setInverse <- function(inverse) i <<- inverse
  #get Inverse of the matrix
  getInverse <- function() i
  #creates a special "vector"
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}