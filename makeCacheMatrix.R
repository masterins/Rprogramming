## makeCacheMatrix and CacheSolve 

makeCacheMatrix<-function (x= numeric())
{
  vaiables_s<- NULL
  set <-function(y)
  {
    x<<-y
    variables_s<<-NULL
    
    
  }
  
  get <-function() x
  setsolve<-function(solve) vaiables_s <<-solve
  getsolve <- function () vaiables_s
  list(set=set, get = get, setsolve= setsolve, getsolve=getsolve )
  
}

cacheSolve <-function(x,...)
{
  variable_s<-x$getsolve()
  if (!is.null(variable_s))
  {
    message("I get data in cache")
    return (variable_s)
  }
  else
  {
  data <-x$get()
  variable_s<-solve(data,...)
  x$setsolve(variable_s)
  variable_s
  }
 
}

