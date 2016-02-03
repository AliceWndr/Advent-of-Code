day3_more_presents <- function(str){
  moves=nchar(str)
  field=matrix(data=0,2*moves+1,2*moves+1)
  field[moves+1,moves+1]=1 #first package
  #starting coordinates
  curr_x=moves+1
  curr_y=moves+1
  
  for(move in 1:moves) { #looping through each move
    if(substr(str,move,move)=="^"){
      field[curr_x,curr_y+1]=field[curr_x,curr_y+1]+1
      curr_y=curr_y+1
    } else if(substr(str,move,move)=="v"){
      field[curr_x,curr_y-1]=field[curr_x,curr_y-1]+1
      curr_y=curr_y-1
    } else if(substr(str,move,move)==">"){
      field[curr_x+1,curr_y]=field[curr_x+1,curr_y]+1
      curr_x=curr_x+1
    } else {
      field[curr_x-1,curr_y]=field[curr_x-1,curr_y]+1
      curr_x=curr_x-1
    }
  }
  
  more_gifts=length(field[field>0])
  return(more_gifts)
}
