table <- matrix(c(100,60,70,90,100,40),2,3,byrow=TRUE)


rows <- c("male", "female")
columns <- c("BFilter", "RFilter", "GFilter")

dimnames(table) <- list("rows"=rows,"columns"=columns)

table

alpha <-0.05


res <- chisq.test(table,correct=FALSE)

res