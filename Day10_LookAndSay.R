look_say_rec <- function(start_str, n) {
    if(n==1){
        output <- start_str
    } else {
        len <- nchar(start_str)             #length of the input number as string
        char_first <- substr(start_str,1,1) #fisrt character of the new block (a block defined as the same set of numbers)
        len_block <- 1
        next_element <- ""
        
        for(pos in 2:len){                  #loop through each position in string
            if(char_first==substr(start_str,pos,pos)){
                len_block    <- len_block+1
            } else {
                next_element <- paste(next_element, len_block, char_first, sep="")
                char_first   <- substr(start_str,pos,pos)
                len_block    <- 1
            }
        }
        
        next_element <- paste(next_element, len_block, char_first, sep="") #adding last block
        output <- look_say_rec(next_element,n-1)
    }
    
    return(output)
}

nchar(look_say_rec("3113322113",41))
nchar(look_say_rec("3113322113",51))
