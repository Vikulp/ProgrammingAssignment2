## Put comments here that give an overall description of what your
## functions do
## Initializing a Z global matrix
z<-matrix(nrow=3, ncol=3)
## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  z<<-x
  z1<<-solve(x)
  z1
}


## This function computes the inverse of the special "matrix"
## returned by makeCacheMatrix above. If the inverse has already 
## been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
check<-identical(x,z)
check1<-as.numeric(check)
   if(check1==1)
  {
    inv<-z1
    print(x)
  }
  else
  {
    inv<-makeCacheMatrix(x)
    print(a)
  }
  inv
}

