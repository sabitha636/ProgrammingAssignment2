## the following program is going to calculate the inverse of the sqaure matrix
## and the value of inverse mmatrix is cached.

## the function makeCacheMatrix is going to access the values of inversevalue and x 
## with the help of getters and setters. set() is going to initialize the inversevalue 
## as null until the value is cached. get() will retrieve the matrix. setinverse() 
#is going to set the inverse matrix to cache. getinverse() is going to get the cached 
# value of inverse matrix.


makeCacheMatrix <- function(x = matrix()) {
    
      inversevalue <<- NULL
  
      set <- function(y){
    
          x <<- y
          inversevalue <<- NULL
    
      }
  
    
      get <- function() x
  
      setinverse <- function(inv) inversevalue <<- inv
  
      getinverse <- function() inversevalue
  
      list( set = set, get = get, setinverse = setinverse, getinverse = getinverse)  

}


## The following function is going to calculate the inverse of the matrix and 
## set the matrix inverse value in cache if the cache is null else it is going
## to return the cached value.

cacheSolve <- function(x, ...) {
   ## Return a matrix that is the inverse of 'x'
      
      inversevalue <- x$getinverse()
  
      if (!is.null(inversevalue)){
    
          message("getting cached inverse of matrix")
          return(inversevalue)
    
      }
  
      temp <- x$get()
      inversevalue <-solve(temp)
      x$setinverse(inversevalue)
  
      inversevalue
}
