## I have replaced every mean function reference to "inverse"
## I have given my own input 
##solved for my function

makeCacheMatrix <- function(x = matrix(sample(1:100,9),3,3)) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmean <- function(inverse) m <<- inverse
        getmean <- function() m
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)

}


## I have just changed the references of mean to inverse and kept remaining as is

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- inverse(data, ...)
        x$setInverse(m)
        m
}
}
