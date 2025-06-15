# Geometric probability
x <- rgeom(100, 0.3)

# X: number of failures before the first success

# Probability that the first success is on the 6th trial
dgeom(5, 0.3) # X == 5


#  The probability that there are 5 or fewer failures before the first success
pgeom(5, 0.3) # X <= 5


# Theoretical probabilites
dgeom(5, 0.3) # X == 5
pgeom(5, 0.3) # X <= 5
pgeom(4, 0.3) # X <  5
1- pgeom(4, 0.3) # X >= 5
1- pgeom(5, 0.3) # X >  5


# Empirical probabilites
length(x[x==5])/length(x)   # X == 5
