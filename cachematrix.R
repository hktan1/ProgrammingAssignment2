## Put comments here that give an overall description of what your
## functions do
## test
## Write a short comment describing this function

## makeCacheMetrix function creates a special "vector", which
## is really a list containing a function to
## 1. set the value of the vector
## 2. get te value of the vector
## 3. set the value of the inverse
## 4. get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {

	inver <- null
	set <- function(y) {
	x <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) inver <<- inverse
	getinverse <- function() inver
	list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)


}


## Write a short comment describing this function

## cacheSolve function calculates the inverse of the special "vector"
## created with the above function.
## However, it first checks to see if the inverse has already been calculated.
## If so, it gets the inverse from the cache and skips the computation.
## Otherwise, it calculates the inverse of the data and sets the 
## valus of the inverse in the cache via the setinverse function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

	inver <- x$getinverse()
	if (!is.null(inver)) {
	message("getting cache data.")
	return(inver)
	}
	data <- x$get()
	inver <- solve(data)
	x$setinverse(inver)
	inver


}
