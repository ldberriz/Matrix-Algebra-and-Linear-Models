# QUESTION 2.2.2  (1 point possible)
# Form the design matrix X (note: use a capital X!). 
# This can be done by combining a column of 1's with a column 
# of 'x' the father's heights.

X = cbind(rep(1,N), x)

# Now calculate (X^T X)^-1, the inverse of X transpose times X. 
# Use the solve() function for the inverse and t() for the transpose. 
# What is the element in the first row, first column?
