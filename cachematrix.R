

## Thiis function will create a list of functions and will store the value of a matrix
## which the user will pass by  argument. It have 4 functions set(), get(), setinverse(), getinverse()
## the 4 functions will allow interact with the element store in the list

makeCacheMatrix <- function(x = matrix()) {


   inverse <- NULL
    
    set <- function(y){

    x <<- y
    inverse <<- NULL

    }


    get <- function() x

    setinverse <- function(inv) inverse <<- inv
    
    getinverse <- function() inverse

    list (set=set , get=get , setinverse=setinverse, getinverse=getinverse)

  
}


## This function calculate the inverse of the matrix created by makeCacheMatrix
##  If the inverse wasnt calculate  before it will calculate the inverse with solve()
##  if that isnt the case they will return the inverse keep in the cache
## This function will interact with makeCacheMAtrix
## Sorry I dont write very good in english

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

    inversep <- x$getinverse()

    if(!is.null(inversep)){

    message("getting cache data")

    return(inversep)

   }

   data <- x$get()

   inversep <- solve(data, ...)

   x$setinverse(inversep)

   inversep

}
