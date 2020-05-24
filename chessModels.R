## Fitting Models
## 1 signifies total data, 2=winData, 3=losData, 4=drawData
## fit means that Black is dependent on White
## revfit means white is dependent on Black
## fit{Piece/Move} means that Black Piece or Black move is dependent on All the 6 other White Moves
## revfit{piece/Move} means that white Piece or white move is dependent on All the 6 other Black Moves
## fit{Initial of Black Piece/Move}{initial of White piece/Move} means that Black piece/move is dependent on only 
## the other white piece/move
## revfit{Initial of White Piece/Move}{initial of Black Piece/Move} means that White piece/Move is dependent on only
## the other Black piece/move


## Black is dependent on White

fitting <- lm(B_B_moves+B_K_moves+B_N_moves+B_Q_moves+B_R_moves ~ 
             W_B_moves+W_K_moves+W_N_moves+W_Q_moves+W_R_moves, data)

## white is dependent on Black
revfit <- lm(W_B_moves+W_K_moves+W_N_moves+W_Q_moves+W_R_moves ~ 
                B_B_moves+B_K_moves+B_N_moves+B_Q_moves+B_R_moves, data)

## Black Piece or Black move is dependent on All the 6 other White Moves

fitBishop <- lm(B_B_moves~W_B_moves+W_K_moves+W_N_moves+W_Q_moves+W_R_moves, data)
fitKing <- lm(B_K_moves~W_B_moves+W_K_moves+W_N_moves+W_Q_moves+W_R_moves, data)
fitKnight <- lm(B_N_moves~W_B_moves+W_K_moves+W_N_moves+W_Q_moves+W_R_moves, data)
fitQueen <- lm(B_Q_moves~W_B_moves+W_K_moves+W_N_moves+W_Q_moves+W_R_moves, data)
fitRook <- lm(B_R_moves~W_B_moves+W_K_moves+W_N_moves+W_Q_moves+W_R_moves, data)

## white Piece or white move is dependent on All the 6 other Black Moves

revfitBishop <- lm(W_B_moves~B_B_moves+B_K_moves+B_N_moves+B_Q_moves+B_R_moves, data)
revfitKing <- lm(W_K_moves~B_B_moves+B_K_moves+B_N_moves+B_Q_moves+B_R_moves, data)
revfitKnight <- lm(W_N_moves~B_B_moves+B_K_moves+B_N_moves+B_Q_moves+B_R_moves, data)
revfitQueen <- lm(W_Q_moves~B_B_moves+B_K_moves+B_N_moves+B_Q_moves+B_R_moves, data)
revfitRook <- lm(W_R_moves~B_B_moves+B_K_moves+B_N_moves+B_Q_moves+B_R_moves, data)

## Black piece/move is dependent on only the other white piece/move

fitBB <- lm(B_B_moves~W_B_moves,data)
fitBK <- lm(B_B_moves~W_K_moves,data)
fitBN <- lm(B_B_moves~W_N_moves,data)
fitBQ <- lm(B_B_moves~W_Q_moves,data)
fitBR <- lm(B_B_moves~W_R_moves,data)

fitKB <- lm(B_K_moves~W_B_moves,data)
fitKK <- lm(B_K_moves~W_K_moves,data)
fitKN <- lm(B_K_moves~W_N_moves,data)
fitKQ <- lm(B_K_moves~W_Q_moves,data)
fitKR <- lm(B_K_moves~W_R_moves,data)

fitNB <- lm(B_N_moves~W_B_moves,data)
fitNK <- lm(B_N_moves~W_K_moves,data)
fitNN <- lm(B_N_moves~W_N_moves,data)
fitNQ <- lm(B_N_moves~W_Q_moves,data)
fitNR <- lm(B_N_moves~W_R_moves,data)

fitQB <- lm(B_Q_moves~W_B_moves,data)
fitQK <- lm(B_Q_moves~W_K_moves,data)
fitQN <- lm(B_Q_moves~W_N_moves,data)
fitQQ <- lm(B_Q_moves~W_Q_moves,data)
fitQR <- lm(B_Q_moves~W_R_moves,data)

fitRB <- lm(B_R_moves~W_B_moves,data)
fitRK <- lm(B_R_moves~W_K_moves,data)
fitRN <- lm(B_R_moves~W_N_moves,data)
fitRQ <- lm(B_R_moves~W_Q_moves,data)
fitRR <- lm(B_R_moves~W_R_moves,data)


## White piece/Move is dependent on only the other Black piece/move

revfitBB <- lm(W_B_moves~B_B_moves,data)
revfitBK <- lm(W_B_moves~B_K_moves,data)
revfitBN <- lm(W_B_moves~B_N_moves,data)
revfitBQ <- lm(W_B_moves~B_Q_moves,data)
revfitBR <- lm(W_B_moves~B_R_moves,data)

revfitKB <- lm(W_K_moves~B_B_moves,data)
revfitKK <- lm(W_K_moves~B_K_moves,data)
revfitKN <- lm(W_K_moves~B_N_moves,data)
revfitKQ <- lm(W_K_moves~B_Q_moves,data)
revfitKR <- lm(W_K_moves~B_R_moves,data)

revfitNB <- lm(W_N_moves~B_B_moves,data)
revfitNK <- lm(W_N_moves~B_K_moves,data)
revfitNN <- lm(W_N_moves~B_N_moves,data)
revfitNQ <- lm(W_N_moves~B_Q_moves,data)
revfitNR <- lm(W_N_moves~B_R_moves,data)

revfitQB <- lm(W_Q_moves~B_B_moves,data)
revfitQK <- lm(W_Q_moves~B_K_moves,data)
revfitQN <- lm(W_Q_moves~B_N_moves,data)
revfitQQ <- lm(W_Q_moves~B_Q_moves,data)
revfitQR <- lm(W_Q_moves~B_R_moves,data)

revfitRB <- lm(W_R_moves~B_B_moves,data)
revfitRK <- lm(W_R_moves~B_K_moves,data)
revfitRN <- lm(W_R_moves~B_N_moves,data)
revfitRQ <- lm(W_R_moves~B_Q_moves,data)
revfitRR <- lm(W_R_moves~B_R_moves,data)
