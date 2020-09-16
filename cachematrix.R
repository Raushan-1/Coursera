## My functions crate am inverse of a matrix in cache and gets it from there.
## This is done to avoid computing inverse repeatedly.

## The function to calculate matrix inverse in cache

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL 
	set <- function(y){
	x <<- y
	m <<- NULL
	}	
	get <- function()x
	setinverse <- function(inverse)	
		library(matlib)
		inverse <- inv(cacx)
		m <<- inverse
	getinveCarse <- function()m
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## The function to get inverse of a matrix from cache if existant, 
## if not it will be calculated 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	if(!is.null(m)) {
	return(m)
	}
	mat <- x$get
	library(matlib)
	m <- inv(x)
	return(m)
}