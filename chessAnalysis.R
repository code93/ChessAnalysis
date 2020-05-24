library(bigchess)
library("rjson")
library(dplyr)

getData <- function(user="LightBeaarer"){

json_file <- paste0("https://api.chess.com/pub/player/",user,"/games/archives")
json_data <- fromJSON(paste(readLines(json_file), collapse=""))
result <- data.frame()
for(i in json_data$archives)
  result <- rbind(result,read.pgn(paste0(i,"/pgn")))


result
}

f <- system.file("extdata", "Kasparov.gz", package = "bigchess")
con <- gzfile(f,encoding = "latin1")
df <- read.pgn(con,quiet = TRUE)

##W_B_moves+W_K_moves+W_N_moves+W_O_moves+W_Q_moves+W_R_moves,B_B_moves+B_K_moves+B_N_moves+B_O_moves+B_Q_moves+B_R_moves

processData <- function(user="Kasparov, Gary"){
  req <- select(df, White, Black, Result, Movetext)
  
  win <- filter(req, (White == user & Result == "1-0"  | (Black == user & Result == "0-1")))
  los <- filter(req, (White == user & Result == "0-1"  | (Black == user & Result == "1-0")))
  draw <- filter(req, Result == "1/2-1/2")

  win$Result=1
  los$Result=0
  draw$Result=0.5
  
  win = select(win, Movetext, Result)
  los = select(los, Movetext, Result)
  draw = select(draw, Movetext, Result)
  
  rbind(win, los)
 

}

dat <- processData()
data <- cbind(stat_moves(dat$Movetext),Result = dat$Result)