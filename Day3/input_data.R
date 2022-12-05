input_data <- read.table("Day3/input_data.txt")

num_items <- apply(input_data,2,nchar)
split_bag <- matrix(NA, nrow = nrow(num_items), ncol = 2)
colnames(split_bag) <- c("part1","part2")
intersect_value <- matrix(NA, nrow = nrow(num_items))

part1 <- list()
part2 <- list()

for(i in 1:nrow(num_items)){

  part1[[i]] <- unlist(strsplit(substr(input_data[i,],1,num_items[i]/2),""))
  part2[[i]] <- unlist(strsplit(substr(input_data[i,],num_items[i]/2+1,nchar(input_data[i,])),""))

  intersect_value[i,] <- intersect(part1[[i]],part2[[i]])
}

score <- 0
for(i in 1:nrow(num_items)){
  all_letters <- c(letters,LETTERS)
  score <- score + which(all_letters %in% intersect_value[i,])
}

rel_seq <- seq(1,nrow(num_items),3)
intersect_value_3 <- matrix(NA, nrow = nrow(num_items))
for(i in rel_seq){
  temp <- intersect(unlist(strsplit(input_data[i,],"")), unlist(strsplit(input_data[i+1,],"")))
  intersect_value_3[i,] <- intersect(temp, unlist(strsplit(input_data[i+2,],"")))

}
intersect_value_3 <- na.omit(intersect_value_3)


score <- 0
for(i in 1:nrow(intersect_value_3)){
  all_letters <- c(letters,LETTERS)
  score <- score + which(all_letters %in% intersect_value_3[i,])
}



