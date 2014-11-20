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
setmatrix <-function(solve) m <<-solve
getmatrix <-function() m
list(set=set, get=get,
setmatrix=setmatrix,
getmatrix=getmatrix)
}


## The second function: cacheSolve.

cacheSolve <- function(x=matrix(), ...) {
m<-x$getmatrix()
if(!is.null(m)){
message ("getting cached data")
return(m)
}
matrix <-x$get()
m <- solve(matrix, ...)
x$setmatrix(m)
m
}




        ## Return a matrix that is the inverse of 'x'
}
