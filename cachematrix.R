## Put comments here that give an overall description of what your
## functions do
# 06/13/2018
# VZM
# coursera RProgrammin course:  Programming assignment 2

# function 1
## makes a list contatining functions to set and get the data, 
# and then set and get the inverse of the data

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(inver) inv <<- inver
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


# function 2
## function to find the inverse of the matrix eather from cache or calculate it.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  m=inv <- solve(data, ...)
  x$setinv(inv)
  inv
}

