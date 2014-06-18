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


## Write a short comment describing this function

# cacheSolve is function which creates inverse matrix:
# it checks if tha calculation has already been calculated
# if yes it will skip the process of calculating
# if not it will calculate the inverse matrix and set 
# the calculated value into cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInv()
    if(!is.null(m)) {
      message("getting cached data.")
      return(m)
    }
    data <- x$get()
    m <- solve(data)
    x$setInv(m)
    m
  }
}
