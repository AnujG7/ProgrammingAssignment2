## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix returns a specia matrix with a list of getter and setters.
## It returns a list with 4 functions; get, set,setInverse and getInverse.
## Purpose is to cache the matrix's inverse.

makeCacheMatrix <- function(x = matrix()) {
MyInvMat <<- NULL
set <- function(y){
  x <<- y
  MyInvMat <<- NULL
}
get <- function() x
setInverse <- function(inverse) MyInvMat <<- inverse
getInverse <- function() MyInvMat

list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.
## else, it calculates the inverse usiong solve internal function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  y <<- x
  MyInvMat <- x$getInverse()
  if(!is.null(MyInvMat)){
    message("cached output")
    return(MyInvMat)
  }
  Mydata <- x$get()
  MyInvMat <- solve(Mydata)
  x$setInverse(MyInvMat)
  MyInvMat
  
}
