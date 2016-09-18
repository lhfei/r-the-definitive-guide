###################################################################################
# R Loops
###################################################################################
#
# R programming language provides the following kinds of loop to handle looping requirements. 
#
# Click the following links to check their detail.
#

# 1. repeat loop:
#
#   Executes a sequence of statements multiple times and abbreviates the code that manages the loop variable.
#
# 2. while loop: 
#
#   Repeats a statement or group of statements while a given condition is true. It tests the condition before executing the loop body.
#
# 3.for loop:
#
#   Like a while statement, except that it tests the condition at the end of the loop body.
#


v <- c("Hello","loop")
cnt <- 2

## repeat loop sample:
repeat {
  print(v)
  cnt <- cnt + 1
  
  if(cnt > 5) {
    break
  }
}

## while loop example:
cnt <- 2
while (cnt < 7) {
  print(v)
  cnt = cnt + 1
}

## for loop example:
cnt <- 2
start <- 2
end <- 7
for(i in start:end){
  print(paste(i, '--'))
}






