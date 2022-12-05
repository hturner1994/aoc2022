input_data <- read.table("Day2/input_data.txt")

shape_score <- 0
win_score   <- 0

for(i in 1:nrow(input_data)){

  if(input_data[i,2] == "X"){
    shape_score <- shape_score + 1
    if(input_data[i,1] == "A"){
      win_score <- win_score + 3
    }
    if(input_data[i,1] == "C"){
      win_score <- win_score + 6
    }
  } else if(input_data[i,2] == "Y"){
    shape_score <- shape_score + 2
    if(input_data[i,1] == "B"){
      win_score <- win_score + 3
    }
    if(input_data[i,1] == "A"){
      win_score <- win_score + 6
    }
  } else if(input_data[i,2] == "Z"){
    shape_score <- shape_score + 3
    if(input_data[i,1] == "C"){
      win_score <- win_score + 3
    }
    if(input_data[i,1] == "B"){
      win_score <- win_score + 6
    }
  }
}

part1 <- shape_score + win_score

shape_score <- 0
win_score   <- 0

for(i in 1:nrow(input_data)){

  if(input_data[i,2] == "X"){

    if(input_data[i,1] == "A"){
      shape_score <- shape_score + 3
    }
    if(input_data[i,1] == "B"){
      shape_score <- shape_score + 1
    }
    if(input_data[i,1] == "C"){
      shape_score <- shape_score + 2
    }
  } else if(input_data[i,2] == "Y"){
    win_score <- win_score + 3
    if(input_data[i,1] == "A"){
      shape_score <- shape_score + 1
    }
    if(input_data[i,1] == "B"){
      shape_score <- shape_score + 2
    }
    if(input_data[i,1] == "C"){
      shape_score <- shape_score + 3
    }
  } else if(input_data[i,2] == "Z"){
    win_score <- win_score + 6
    if(input_data[i,1] == "A"){
      shape_score <- shape_score + 2
    }
    if(input_data[i,1] == "B"){
      shape_score <- shape_score + 3
    }
    if(input_data[i,1] == "C"){
      shape_score <- shape_score + 1
    }
  }
}

part2 <- shape_score + win_score
