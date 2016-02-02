day1_basem_pos <- function(x){
  count=1
  floor=0
  instr_length=nchar(x)
  
  while(floor!=-1) {
    if(substr(x,count,count)=="("){
      floor=floor+1
    } else{
      floor=floor-1
    }
    count=count+1
  }
  return(count-1)
}
