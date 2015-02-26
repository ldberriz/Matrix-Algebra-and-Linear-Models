# QUESTION 2.1.3
# Edx Course
# url: https://courses.edx.org/courses/HarvardX/PH525.2x/


library(UsingR)

heightMC <- function() {
  x = father.son$fheight
  y = father.son$sheight
  n = length(y)
  
  N = 50
  index = sample(n,N)
  sampledat = father.son[index,]
  x = sampledat$fheight
  y = sampledat$sheight
  betahat = lm(y~x)$coef
  betahat
}

dohMC <- function() {
  slope <- NULL
  slope <- replicate(1e4,c(slope,heightMC()) )
  slope
  sd(slope[2,])   # This is the answer  
}
