## ## Purpose:  Generate two file that work together to calculate
## The inverse of a matrix with a OPTIMIZATION of the program
## storing and recalling the inverse matrix to substantially
## decrease calculation time (solve once use forever).

## Function: makeCacheMatrix  - "Class"
## 
## Input:   x             matrix
##
## Output:  Function      Purpose
##          get           Gets the original matrix
##          setInverse    Sets the stored inverse matrix 
##          getInverse    Gets the stored inverse matrix (NULL if none)
makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setInverse <- function(solved) s <<- solved
  getInverse <- function() s
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}



## Function: makeCacheMatrix  - Return a matrix that is the inverse of 'x'
## 
## Input:   x             matrix
##
## Output:  s             inverse maxtrix of x
cacheSolve <- function(x, ...) {        
  s <- x$getInverse()
  if(!is.null(s)) {               ## check if inverse is already stored
    message("getting cached data")
  }
  s <- solve(data, ...)
  x$setInverse(s)
  s
}
