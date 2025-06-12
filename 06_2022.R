
library('BSDA')
n<- 50
m<-41

x_ <-67.25
y_ <-49.75 
  
s_x_2 <-3.25  
s_y_2 <- 2.75

# Part 1: check if the dispersions are equal

# H0: sigma_x = sigma_y
# Ha: sigma_x != sigma_y

alpha = 0.05


f0<- s_x_2/s_y_2
f0 # Result: f0 = 1.181818


upper <- qf(1-alpha/2, df1 = n-1, df2 = m-1)
round(upper,2)

lower <- qf(alpha/2, df1=n-1, df2 = m-1)
round(lower,2)

f0 < lower || f0 > upper # returns 

round(qnorm(1-0.05),2)
qnorm(0.05,lower.tail = FALSE)

# The dispersions are equal

# Part 2:

# H0: mu_x = mu_y
# Ha: mu_x > mu_y

# C = (za, +inf)
alpha <- 0.05

za<-qnorm(1-0.05)


