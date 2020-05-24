df1 <- read.pgn("Fischer.pgn",quiet = TRUE)
df <- df1
finalTest <- processData("Fischer, Robert James")
finTest <- cbind(stat_moves(finalTest$Movetext),Result = finalTest$Result)
pi <- predict(fit, newdata = finTest, type = "class")

accuracy <- sum(finTest$Result==pi)/(sum(finTest$Result==pi)+sum(!finTest$Result==pi))


print(paste("final accuracy:",accuracy))