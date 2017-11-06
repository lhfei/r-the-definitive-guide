library(readr)
sample_movielens_ratings <- read_delim("datasets/sample_movielens_ratings.txt", 
                                     delim = ":", col_names = TRUE)
names(sample_movielens_ratings) <- c("userId", "movieId", "rating", "timestamp")
View(sample_movielens_ratings)