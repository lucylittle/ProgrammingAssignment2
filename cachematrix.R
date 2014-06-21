makeCacheMatrix <- function(input.matrix = matrix()) {
        if (!is.matrix(input.matrix)){
                stop("Please use a matrix with this function")
        }
        
        inverted.matrix <- NULL
        
        set <- function(y){
                
                input.matrix <<- y
                
                inverted.matrix <<- NULL
        }
        
        get <- function() input.matrix
        
        set.inverse <- function(solve) inverted.matrix <<- solve
        
        get.inverse <- function() inverted.matrix
        
        list(set = set,
             get = get,
             set.inverse = set.inverse,
             get.inverse = get.inverse)
        
}


## The following function inverse of the special "matrix" returned
## by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not
## changed), then the cachesolve should retrieve the inverse from the cache.
## Otherwise it calculate the inverse of the matrix in the cache via
## the setInvCashe function

cacheSolve <- function(checkCached.matrix, ...) {
        
        inverted.matrix <- checkCached.matrix$get.inverse()
        if (!is.null(inverted.matrix)){
                message("Getting Cached Data That Is Already Inverted!")
                retrun(inverted.matrix)
        }
        data <- checkCached.matrix$get()
        inverted.matrix <- solve(data, ...)
        checkCached.matrix$set.inverse(inverted.matrix)
        inverted.matrix
}
