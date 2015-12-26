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
  }
  else
  {
    inv<-makeCacheMatrix(x)
  }
  inv
}

## Here i am defining a square x matrix, then i am calling cachcSolve function
## of you call cachcSolve(x) more than 1 time for a given x, then it will not call makeCacheMatrix
## it will pick up the inverse from cache global variable
a<-c(1,5, 7)
b<-c(3,11, 17)
c<-c(31,131, 147)
x<-cbind(a,b,c)
cacheSolve(x)
