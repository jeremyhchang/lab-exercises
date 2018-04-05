## Part 1: Debugging

my_num <- 6
initials <- "?. ?."

my_vector <- c(my_num, initials)

# run ?sum to get more info
vector_sum <- sum(my_vector)

# Describe why this doesn't work: 
# This doesn't work because the variables are not the same type.

install.packages("stringr")
library(stringr)
my_line <- "Hey, hey, this is the library"
print(str_length(my_line))

# Describe why this doesn't work: 
# This didn't work because the library() function wasn't called.

said_the_famous <- paste(my_line, " - ", initials)

# Describe why this doesn't work: 
# This did not work because "initial" was not found. It's supposed to be "initials".


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be

typeof(c("dogs", "cats", "ferrets???"))  # "character"

typeof(c(1, 4, 6))  # "double"

typeof(c(1, "dogs"))  # "character"

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

CompareLength <- function(v1, v2) {
  diff <- abs(length(v1) - length(v2))
  diff_string <- paste('The difference in lengths is', diff)
  return(diff_string)
}  

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1,2,3), 1:100)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

# Pass two vectors to your `DescribeDifference` function


# Write a function `CombineVectors` that takes in 3 vectors and combines them into one

# Send 3 vectors to your function to test it.

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters

