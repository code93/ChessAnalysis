# ChessAnalysis

The username for which you want the games is defined in the chessAnalysis.R source file in the variable user of  the function getData.

The games are taken from the site chess.com and is processed.

While chessModels.R makes the required linear models.

plotRes.R currently makes plot1.png, plot2.png and plot3.png

plot1.png is the residual plot considering all the black or white pieces/moves excluding pawns.
plot2.png is the residual plot considering the King dependent on all the pieces/moves of opposite color, excluding pawns.
plot3.png is the residual plot considering only King vs King.

# Run sourcing.R to run chessAnalysis.R, chessModels.R and plotRes.R
