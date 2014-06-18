## Put comments here that give an overall description of what your
## functions do

## We are creating two functions:
## 1. makeCachematrix creates a matrix object that can cache its inverse
## 2. cacheSolve computes the inverse of the matrix returnes by makeCacheMatrix
##    If the inverse has alredy been calculated, the chacheSolve should return the inverse from the cache
##    instead of calculating again.

## Write a short comment describing this function
## In this function x is a square invertible matrix and we will set the value fo the matrix.
##

  makeCacheMatrix <- function(x = matrix()) {
      m<-NULL
        set<-function(y){
        x<<-y
      m<<-NULL
  
}

get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
     setmatrix=setmatrix,
     getmatrix=getmatrix)
}

## Write a short comment describing this function
## This function checks if the inverse has been calculated.
## If so, get the inverse from the cache function makeCacheMatrix.
## If not, it calculates the inverse and sets the value of it in the cache
## using the setmean function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
  
}
