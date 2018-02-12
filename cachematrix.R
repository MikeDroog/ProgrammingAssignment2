## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Following the example we want to :
## set the value of the vector
## get the value of the vector
## set the inverse value of the vector
## get the inverse value of the vector

## This means that we can copy the first part of the example : 
## makeVector <- function(x = numeric()) {
##         m <- NULL
##         set <- function(y) {
##                 x <<- y
##                 m <<- NULL
##         }
##         get <- function() x
## 
## And make it our own:
 
makeCacheMatrix <- function(x = matrix()) {
## set value
		inv <- NULL
		set <- function(y)
			x <<- y
			y <<- NULL
		}
## get value
		get <- function () x
		
		
## instead of the mean , we want the inverse so we'll have to edit the following section : 
##       setmean <- function(mean) m <<- mean
##        getmean <- function() m
##        list(set = set, get = get,
##             setmean = setmean,
##             getmean = getmean)

## set inverse value
	setinverse <- function(inverse)inv <<- inverse

## get inverse value
	getinverse <- function() inv
	list(set = set, get = get,
		setinverse = setinverse,
		getinverse = getinverse)
}

## The example for getting the mean : 
## cachemean <- function(x, ...) {
##         m <- x$getmean()
##         if(!is.null(m)) {
##                 message("getting cached data")
##                 return(m)
##         }
##         data <- x$get()
##         m <- mean(data, ...)
##         x$setmean(m)
##         m
## }

## reconstruct for the inverse: 
cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- inverse(data, ...)
        x$setinverse(inverse)
        inv
}
}
