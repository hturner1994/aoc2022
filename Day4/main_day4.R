input_data <- read.table("Day4/input_data.txt")

count <- 0

#Part 1
for(i in 1:nrow(input_data)){
  temp <- as.matrix(unlist(strsplit(input_data[i,],",")))

  num1 <- unlist(strsplit(temp[1,], "-"))
  seq1 <- seq(num1[1],num1[2])

  num2 <- unlist(strsplit(temp[2,], "-"))
  seq2 <- seq(num2[1],num2[2])

  if(isTRUE(unique(seq2 %in% seq1)) | isTRUE(unique(seq1 %in% seq2))){
    count <- count +1
  }
}

count <- 0

#Part 2
for(i in 1:nrow(input_data)){
  temp <- as.matrix(unlist(strsplit(input_data[i,],",")))

  num1 <- unlist(strsplit(temp[1,], "-"))
  seq1 <- seq(num1[1],num1[2])

  num2 <- unlist(strsplit(temp[2,], "-"))
  seq2 <- seq(num2[1],num2[2])

  if(any(seq2 %in% seq1)){
    count <- count +1
  }
}

