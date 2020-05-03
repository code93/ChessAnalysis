plotResidual <- function(x,name){
        
        png(paste0("plots/",(name),".png"))
        par(mfrow=c(2,2))
        
        plot(get(paste0("fit1", x))$residuals, get(paste0("revfit1", x))$residuals, 
             xlab = "Black dependent on White", 
             ylab = "White dependent on Black",
             col=c("red", "blue"),
             main="Residual Plot")
        
        plot(get(paste0("fit2", x))$residuals, get(paste0("revfit2", x))$residuals, 
             xlab = "Black dependent on White", 
             ylab = "White dependent on Black",
             col=c("red", "blue"),
             main="Residual Win Plot")
        
        plot(get(paste0("fit3", x))$residuals, get(paste0("revfit3", x))$residuals, 
             xlab = "Black dependent on White", 
             ylab = "White dependent on Black",
             col=c("red", "blue"),
             main="Residual lose Plot")
        
        plot(get(paste0("fit4", x))$residuals, get(paste0("revfit4", x))$residuals, 
             xlab = "Black dependent on White", 
             ylab = "White dependent on Black",
             col=c("red", "blue"),
             main="Residual draw Plot")
        
        dev.off()
}


plotResidual(x= "", name="All_VS_All")
plotResidual(x= "Bishop", name="Bishop_VS_All")
plotResidual(x= "King", name="King_VS_All")
plotResidual(x= "Knight", name="Knight_VS_All")
plotResidual(x= "Castle", name="Castle_VS_All")
plotResidual(x= "Queen", name="Queen_VS_All")
plotResidual(x= "Rook", name="Rook_VS_All")

plotResidual(x= "BB", name="Bishop_VS_Bishop")
plotResidual(x= "BK", name="Bishop_VS_King")
plotResidual(x= "BN", name="Bishop_VS_Knight")
plotResidual(x= "BO", name="Bishop_VS_Castle")
plotResidual(x= "BQ", name="Bishop_VS_Queen")
plotResidual(x= "BR", name="Bishop_VS_Rook")

plotResidual(x= "KB", name="King_VS_Bishop")
plotResidual(x= "KK", name="King_VS_King")
plotResidual(x= "KN", name="King_VS_Knight")
plotResidual(x= "KO", name="King_VS_Castle")
plotResidual(x= "KQ", name="King_VS_Queen")
plotResidual(x= "KR", name="King_VS_Rook")

plotResidual(x= "NB", name="Knight_VS_Bishop")
plotResidual(x= "NK", name="Knight_VS_King")
plotResidual(x= "NN", name="Knight_VS_Knight")
plotResidual(x= "NO", name="Knight_VS_Castle")
plotResidual(x= "NQ", name="Knight_VS_Queen")
plotResidual(x= "NR", name="Knight_VS_Rook")

plotResidual(x= "OB", name="Castle_VS_Bishop")
plotResidual(x= "OK", name="Castle_VS_King")
plotResidual(x= "ON", name="Castle_VS_Knight")
plotResidual(x= "OO", name="Castle_VS_Castle")
plotResidual(x= "OQ", name="Castle_VS_Queen")
plotResidual(x= "OR", name="Castle_VS_Rook")

plotResidual(x= "QB", name="Queen_VS_Bishop")
plotResidual(x= "QK", name="Queen_VS_King")
plotResidual(x= "QN", name="Queen_VS_Knight")
plotResidual(x= "QO", name="Queen_VS_Castle")
plotResidual(x= "QQ", name="Queen_VS_Queen")
plotResidual(x= "QR", name="Queen_VS_Rook")

plotResidual(x= "RB", name="Rook_VS_Bishop")
plotResidual(x= "RK", name="Rook_VS_King")
plotResidual(x= "RN", name="Rook_VS_Knight")
plotResidual(x= "RO", name="Rook_VS_Castle")
plotResidual(x= "RQ", name="Rook_VS_Queen")
plotResidual(x= "RR", name="Rook_VS_Rook")






