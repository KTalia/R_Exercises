# Binomial distribution

x <- rbinom(100, size = 1000, prob = 0.2)

# Theoretical probabilities
dbinom(210,1000,0.2)     # X = 210
pbinom(210,1000,0.2)     # X <=210
1- pbinom(209,1000,0.2)  # X >= 210
pbinom(209, 1000, 0.2)   # X < 210
1 - pbinom(210,1000,0.2) # X > 210

# Empirical
length(x[x==210])/length(x) # X = 210
length(x[x >210])/length(x) # X > 210
length(x[x<210])/length(x)  # X < 210
length(x[x>=210])/length(x) # X >= 210
length(x[x<=210])/length(x) # X <= 210