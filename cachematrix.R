## coursera R programming Assignment 2:

makeCacheMatrix<-function(x=matrix()){
        i<-NULL
        set<-function(y){
                x<<-y
                i<<-NULL
    ## Initializing Objects: x is an empty matrix, i is an object that represents the inverse
    ## defining the behaviours of the functions set, get, setinverse, get inverse:
    ## set is used to assign the input argument to the parent environment and to clear any value of i that has been cached 
        }
        get<-function()x
        setInverse<-function(inverse)i<<-inverse ## it assigns the input argument to the value of i in the parent environment
        getInverse<-function()i ## getter for the matrix i 
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
} ##it returns a fully formed object of type makeCacheMatrix; naming the list elements allows to use $ to access function names

cacheSolve<- function(x, ...) {
                ## Return a matrix that is the inverse of 'x'
        i <- x$getInverse()## attemps to retrive an inverse from the object passed in as the argument
        if(!is.null(i)) {## checks if the result is null 
                message("getting cached data")## if the value is not null, there is a valid, cached inverse 
                return(i)##which can be returned into the parent environment
        }
        m <- x$get()##otherwise it gets the matrix from the input 
        i <- solve(m, ...)##and calculates the inverse
        x$setInverse(i)
        i.   ## and returns the inverse to the parent environment by printing i 
}
