
# 𝐻0: 𝜎𝑋2 = 𝜎𝑌2
# 𝐻𝑎: 𝜎𝑋2 < 𝜎𝑌2 

n<-10
m<-15
 
s_x<-5.7
s_y<-9.6

x_ <- 70
y_ <- 80

f0<-s_x/s_y 
f0

alpha <- 0.05

upper<- qf(alpha,n-1,m-1)
upper

# C=(0, 2.645791)

alpha < 0.3305269  # TRUE:  we fail to reject H0 and conclude the variances are equal. 
