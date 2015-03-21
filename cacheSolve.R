cacheSolve <- function(x, ...) {
  #try to get inverse of the matrix from cache
  i <- x$getInverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  #If inverse is not cached, get data and find inverse
  data <- x$get()
  #get inverse
  i <- solve(data, ...)
  x$setInverse(i)
  i
}