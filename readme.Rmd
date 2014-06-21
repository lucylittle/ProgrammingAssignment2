Read Me For Programming 2 Assignment
========================================================

This is Program Assignment 2 for R Progamming taught by Roger D. Peng, PhD
----------------------------------------------------------------------------
The goal of this Program was to:
Write the following functions:

1. makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
2. cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

Computing the inverse of a square matrix can be done with the solve function in R. For example, if X is a square invertible matrix, then solve(X) returns its inverse.

I have created and comment my code. The following are the test cases I ran. I actually got the test cases from the class Dicussion Form thread_id=763:

Note: to save space on this document I did not show the data that was displayed

> testrand <- matrix(data=rnorm(9), nrow=3, ncol=3)


> testrand


> solve(testrand)


> testrand_c <- makeCacheMatrix(testrand)

> cacheSolve(testrand_c)
 

> testrand_c$get()


> testrand_c$get.inverse()


> identical(testrand_c$get.inverse(), solve(testrand))

[1] TRUE

> identical(testrand, testrand_c$get())

[1] TRUE



> testbig <- matrix(data=rnorm(10000), nrow=100, ncol=100)

> testbig

> solve(testbig)

> testbig_c <- makeCacheMatrix(testbig)

> cacheSolve(testbig_c)

> identical(testbig_c$get.inverse(), solve(testbig))

[1] TRUE

> identical(testbig, testbig_c$get())

[1] TRUE