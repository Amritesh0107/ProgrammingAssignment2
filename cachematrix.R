## First in the function makeCacheMatrix, why does 'set function' use variable 'y'?
Is it simply used to tell us how to use '<<-'?

#Secondly, In 'get function', why is variable 'x' followed by the parentheses of the function? ( 'setInverse function - inv<<-inverse' , 'getInverse function - inv' are the same. )


##x <<- y creates x, which is then retrieved by get(). Note that get is also a base function and is being overwritten here. I would advocate in avoiding this, even though it's confined to a function. An ad hoc solution would be to reach base get function through base::get.

#Line get <- function() x is a "short" version of



makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
            x <<- y
            inv <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse) inv <<- inverse
    getInverse <- function() inv
    list(set = set,
         get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
