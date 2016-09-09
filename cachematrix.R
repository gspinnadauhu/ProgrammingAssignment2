## Matrix inversion is usually a costly computation and there may 
## be some benefit to caching the inverse of a matrix rather than 
## compute it repeatedly (there are also alternatives to matrix inversion
## that we will not discuss here). Your assignment is to write a pair of 
## functions that cache the inverse of a matrix.

# makeCacheMatrix: 
# This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        a <- NULL
        set <- function(y){
                x <<- y
                a <<- NULL
        }
        get <- function()x
        setinverse <- function(inv) a <<- inv
        getinverse <- function() a
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        a <- x$getinverse()
        if(!is.null(a)) {
                message("Getting Cached Data")
                return(a)
        }
        data <- x$get()
        a <- solve(data)
        x$setinverse(m)
        a
}