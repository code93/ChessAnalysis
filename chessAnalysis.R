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

da <- getData()

##W_B_moves+W_K_moves+W_N_moves+W_O_moves+W_Q_moves+W_R_moves,B_B_moves+B_K_moves+B_N_moves+B_O_moves+B_Q_moves+B_R_moves

processData <- function(dat = "td", user="LightBeaarer"){
  req <- select(da, -Movetext, -Event, -Site, -Round, -Movetext)
  
  win <- filter(req, (White == user & Result == "1-0"  | (Black == user & Result == "0-1")))
  los <- filter(req, (White == user & Result == "0-1"  | (Black == user & Result == "1-0")))
  draw <- filter(req, Result == "1/2-1/2")
  
  winData <- select(win, NMoves, W_B_moves:R_moves)
  losData <- select(los, NMoves, W_B_moves:R_moves)
  drawData <- select(draw, NMoves, W_B_moves:R_moves)
  
  winData <- filter(winData, NMoves>=4)
  losData <- filter(losData, NMoves>=4)
  drawData <- filter(drawData, NMoves>=4)
  
  wd <- arrange(winData, NMoves)
  ld <- arrange(losData, NMoves)
  dd <- arrange(drawData, NMoves)
  
  wd[,20]=1
  ld[,20]=0
  dd[,20]=0.5
  
  td <- rbind(wd, ld, dd)
  
  if(dat == "td"){
    result <- td
  }
  if(dat == "wd"){
    result <- wd
  }
  if(dat == "ld"){
    result <- ld
  }
  if(dat=="dd"){
    result <- dd
  }
  result

}

data <- processData("td")
winData <- processData("wd")
losData <- processData("ld")
drawData <- processData("dd")