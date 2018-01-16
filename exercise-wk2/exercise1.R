## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# This is a vector that holds two different types of variables. An int and a string, and the string
# ended up overriding the vector, so the 6 became a "6". You cannot sum strings.

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# Did not exectue library("stringr") after installing in order to actually be able to use it.

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# initial is not a variable, but initials is. Its just missing that last "s".


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
Colors <- c("red", "green", "blue")
typeof(colors)
# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(n, m) {
  return(paste("The difference in lengths is", abs(length(n)-length(m))))
}

# Pass two vectors of different length to your `CompareLength` function
input1 <- c(10, 20, 30, 40, 50, 60)
input2 <- c(1, 2, 3, 4, 5)
CompareLength(input1, input2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(n, m) {
  diff <- length(n)-length(m)
  if(diff > 0) {
    return(paste("Your first vector is longer by", diff, "elements"))
  } else {
    return(paste("Your second vector is longer by", diff, "elements"))
  }
}
# Pass two vectors to your `DescribeDifference` function
long <- c(1, 2, 3, 4, 5, 6)
short <- c(1, 2)
DescribeDifference(long, short)
DescribeDifference(short, long)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(n, m, o) {
  return(c(n, m, o))
}
# Send 3 vectors to your function to test it.
CombineVectors(long, short, input1)
# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(courses) {
  return(gsub("[A-Z]","", courses))
}
CapsTime(c("Ddo Yyou Ssee This?"))


