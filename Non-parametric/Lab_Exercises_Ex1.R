# H0: X has uniform distribution
# Ha: X doesnt have uniform distribution

sk<- c(1,2,3,4,5)
nk <- c(50,60,40,47,53) 
n <- sum(nk) # 250

probs <- c(0.2, 0.2, 0.2, 0.2, 0.2)
res <- chisq.test(nk, p=probs)

alpha < res$p.value # TRUE

# Accept H0: it has uniform distribution