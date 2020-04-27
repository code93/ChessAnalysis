
png("plot1.png")
par(mfrow=c(2,2))

plot(fit1$residuals, revfit1$residuals, 
     xlab = "Black dependent on White", 
     ylab = "White dependent on Black",
     col=c("red", "blue"),
     main="Residual Plot")

plot(fit2$residuals, revfit2$residuals, 
     xlab = "Black dependent on White", 
     ylab = "White dependent on Black",
     col=c("red", "blue"),
     main="Residual Win Plot")

plot(fit3$residuals, revfit3$residuals, 
     xlab = "Black dependent on White", 
     ylab = "White dependent on Black",
     col=c("red", "blue"),
     main="Residual lose Plot")

plot(fit4$residuals, revfit4$residuals, 
     xlab = "Black dependent on White", 
     ylab = "White dependent on Black",
     col=c("red", "blue"),
     main="Residual draw Plot")

dev.off()


png("plot2.png")
par(mfrow=c(2,2))

plot(fit1King$residuals, revfit1King$residuals, 
     xlab = "Black dependent on White", 
     ylab = "White dependent on Black",
     col=c("red", "blue"),
     main="Residual Plot")

plot(fit2King$residuals, revfit2King$residuals, 
     xlab = "Black dependent on White", 
     ylab = "White dependent on Black",
     col=c("red", "blue"),
     main="Residual Win Plot")

plot(fit3King$residuals, revfit3King$residuals, 
     xlab = "Black dependent on White", 
     ylab = "White dependent on Black",
     col=c("red", "blue"),
     main="Residual lose Plot")

plot(fit4King$residuals, revfit4King$residuals, 
     xlab = "Black dependent on White", 
     ylab = "White dependent on Black",
     col=c("red", "blue"),
     main="Residual draw Plot")

dev.off()


png("plot3.png")
par(mfrow=c(2,2))

plot(fit1KK$residuals, revfit1KK$residuals, 
     xlab = "Black dependent on White", 
     ylab = "White dependent on Black",
     col=c("red", "blue"),
     main="Residual Plot")

plot(fit2KK$residuals, revfit2KK$residuals, 
     xlab = "Black dependent on White", 
     ylab = "White dependent on Black",
     col=c("red", "blue"),
     main="Residual Win Plot")

plot(fit3KK$residuals, revfit3KK$residuals, 
     xlab = "Black dependent on White", 
     ylab = "White dependent on Black",
     col=c("red", "blue"),
     main="Residual lose Plot")

plot(fit4KK$residuals, revfit4KK$residuals, 
     xlab = "Black dependent on White", 
     ylab = "White dependent on Black",
     col=c("red", "blue"),
     main="Residual draw Plot")

dev.off()






