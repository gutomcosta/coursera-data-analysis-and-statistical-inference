row1 = c(5888,13588,1362,3191,1369)
row2 = c(592,2224,242,920,563)
row3 = c(498,1281,117,427,289)
row4 = c(208,398,52,103,85)

data.table = rbind(row1,row2, row3, row4)
data.table

V <- addmargins(table(gss$xmarsex,gss$degree))


#just columns of interest, gss$degree and gss$attend
mygss <-gss[c(12,32)]

#remove rows with NAs in either column
testgss <-mygss[!is.na(mygss[,1])&!is.na(mygss[,2]),]

#droplevels
testgss <- droplevels(testgss)





load(url("http://s3.amazonaws.com/assets.datacamp.com/course/dasi/inference.Rdata"))

inference(gss$xmarsex, gss$degree, est = "proportion", type = "ht", method = "simulation", alternative = "greater")


