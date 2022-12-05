input_data <- read.table("Day1/input_data.txt",blank.lines.skip = FALSE)

run_sum     <- 0
num_elves   <- 0
result_list <- list()

for(i in 1:nrow(input_data)){
  if(!is.na(input_data[i,])){
    run_sum <- run_sum + as.integer(input_data[i,])
  } else{
    num_elves <- num_elves + 1
    result_list[[paste0("Elf", num_elves)]] <- run_sum
    run_sum <- 0
  }
}

all_elves <- sort(unlist(result_list), decreasing = TRUE)

part1 <- max(all_elves)

part2 <- sum(head(all_elves,3))
