rm(list = ls())
df <- read.table("data.txt", header = FALSE, sep = " ", dec = ".")
df <- df[,colSums(is.na(df)) < nrow(df)]
a <- sort(df[,1])
b <- sort(df[,2])
sum(abs(b-a))
