## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

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
