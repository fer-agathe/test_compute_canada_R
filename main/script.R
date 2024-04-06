library(rpart)

train <- data.frame(
  ClaimID = c(1,2,3),
  RearEnd = c(TRUE, FALSE, TRUE),
  Fraud = c(TRUE, FALSE, TRUE)
)

mytree <- rpart(
  Fraud ~ RearEnd, 
  data = train, 
  method = "class"
)

print(mytree)

# Get the current working directory
current_directory <- getwd()

# Print the current working directory
print(current_directory)