# QUESTION 2.1.2
# Edx Course
# url: https://courses.edx.org/courses/HarvardX/PH525.2x/


gMCSims <- function() {
  g<-9.8 ## meters per second
  h0<-56.67
  v0<-0
  n<-25
  tt<-seq(0,3.4,len=n) ##time in secs, t is a base function
  y<- h0 + v0 *tt - 0.5* g*tt^2 + rnorm(n,sd=1)
  X<-cbind(1,tt,tt^2)
  A<-solve(crossprod(X))%*%t(X)
  gCal <- -2*(A %*% y)
  gCal
}

doIt <- function() {
  gMC <- NULL
  gMC <- replicate(1e5,c(gMC,gMCSims()) )
  mean(gMC[3,]) # This will not print in the console
  sd(gMC[3,])   # This is the answer
}
