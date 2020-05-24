library(caret)
library('rpart')

data$Result = as.factor(data$Result)
inTrain <- createDataPartition(y=data$Result, p=0.50, list = FALSE)
trainData <- data[inTrain,];testData <- data[-inTrain,]
modFit <- train(Result~W_B_moves+W_K_moves+W_N_moves+W_O_moves+W_Q_moves+W_R_moves+B_B_moves+B_K_moves+B_N_moves+B_O_moves+B_Q_moves+B_R_moves,method="rpart",data = trainData )
fit <- rpart(Result~W_B_moves+W_K_moves+W_N_moves+W_O_moves+W_Q_moves+W_R_moves+B_B_moves+B_K_moves+B_N_moves+B_O_moves+B_Q_moves+B_R_moves, method ="class", data = trainData)
printcp(fit)
plotcp(fit)

pi <- predict(fit, newdata = testData, type="class")

accuracy <- sum(testData$Result==pi)/(sum(testData$Result==pi)+sum(!testData$Result==pi))

print(paste("accuracy:",accuracy))