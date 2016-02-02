day1_which_floor <- function(x) {
  floor=0
  instr_length=nchar(x)
  
  for(i in 1:instr_length) {
    if(substr(x,i,i)=="("){
      floor=floor+1
    } else{
      floor=floor-1
    }
  }
  return(floor)
}
