x <-c(420,100,410,70)
table <- matrix(x, 2, 2, byrow=TRUE)

rows<- c("male", "female")
columns <- c("The vacine is efficient", "The vacine is not efficient")

dimnames(table) <- list("rows"=rows,"columns"=columns)

table


res <- chisq.test(table,correct = FALSE)
res