## coursera R programming Assignment 2:

makeCacheMatrix<-function(x=matrix()){
        i<-NULL
        set<-function(y){
                x<<-y
                i<<-NULL
        }
        get<-function()x
        setInverse<-function(inverse)i<<-inverse
        getInverse<-function()i
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}

cacheSolve<- function(x, ...) {
        i <- x$getInverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        m <- x$get()
        i <- solve(m, ...)
        x$setInverse(i)
        i
}
