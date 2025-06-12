library('BSDA')

x <- c(150, 170, 210, 150, 197, 200, 170, 211, 192, 162, 167, 94, 210, 160, 190, 174, 93, 200, 170)
y<- c(93, 143, 176, 204, 200, 170, 155, 120, 180, 130, 140, 140, 50)

alpha<-0.05

n <- length(x)  # n = 19
m <- length(y)  # m = 13

x_ <- mean(x)   # x_ = 172.1053
y_ <-mean(y)    # y_ = 146.2308

var_x <- var(x) # var_x = 1161.322
var_y <- var(y) # var_y = 1835.859


# H0: sigma_x = sigma_y
# Ha: sigma_x != sigma_y


f0<- var_x / var_y # 0.6325767
f0

lower <- qf(alpha/2,df1=n-1, df2=m-1)
lower

upper <- qf(1-alpha/2, df1=n-1, df2=m-1)
upper

f0<lower

f0>upper