## This function is part of the Coursera cdata science course
## In order to speed up computation it is better to cache the inverse of a matrix 
## instead of computing it agaian and again. 

## These (2) functions will be used to cache the inverse of the matrix  
## The first function:makeCacheMatrix, will create a list of functions with as content: 1. set the value of the matrix
## 2. get the value of the matrix, 3. set the value of inverse of the matrix, 4. get the value of inverse of the matrix
## The second function: cacheSolve, assumes that the matrix is always invertible

## The first function: makeCacheMatrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <-function (y) {
                x<<-y
                m <<-NULL
        }
        get  <-function() x
        setinversematrix <-function(solve) m <<-solve
        getinversematrix <-function() m
        list(set=set, get=get,
        setinversematrix=setinversematrix,
        getinversematrix=getinversematrix)
}


## The second function: cacheSolve.

cacheSolve <- function(x, ...) {
        m <-x$getinversematrix()
        if(!is.null(m)){
                message ("getting cached data")
                return(m)
        }
        matrix <-x$get()
        m <- solve(matrix, ...)
        x$setinversematrix(m)
        m
}

##  Return a matrix that is the inverse of 'x'

## x =rbind(c(1, -1/6), c(-1/6, 1)
## r =makeCacheMatrix(x) 
## r$get

## First Run so no cache data

## > cacheSolve(r)
##           [,1]      [,2]
## [1,] 1.0285714 0.1714286
## [2,] 0.1714286 1.0285714

## Second Run gat getting data from cache with text 

## > cacheSolve(r)
## getting cached data
##           [,1]      [,2]
## [1,] 1.0285714 0.1714286
## [2,] 0.1714286 1.0285714

