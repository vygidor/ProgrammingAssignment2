## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# makeCacheMatrix is a list of:
# set the matrix value
# get the matrix value
# set the inverse value of the matrix
# get the inverse value of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
  get <- function() x
  setInv <- function(Inv) m <<- Inv
  getInv <- function() m
  list(set = set, get = get,
              setInv = setInv,
              getInv = getInv)
}

# example of mean calculation of the vector created with similar function as above
# i will use it to create a function cacheSolve as described in PA2
# cachemean <- function(x, ...) {
#  m <- x$getmean()
#  if(!is.null(m)) {
#    message("getting cached data")
#    return(m)
#  }
#  data <- x$get()
#  m <- mean(data, ...)
#  x$setmean(m)
#  m
#}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
