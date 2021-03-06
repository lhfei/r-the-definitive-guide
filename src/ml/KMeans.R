library(ggplot2)

iris <- read.csv(file = file.choose(), header = TRUE, sep = ",", fill = TRUE)
names(iris) <- c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width", "Species")

ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + geom_point()

#Clustering
#Okay, now that we have seen the data, let us try to cluster it. Since the initial cluster assignments are random, let us set the seed to ensure reproducibility.
set.seed(20)
irisCluster <- kmeans(iris[, 3:4], 3, nstart = 20)
#irisCluster

table(irisCluster$cluster, iris$Species)


irisCluster$cluster <- as.factor(irisCluster$cluster)
ggplot(iris, aes(Petal.Length, Petal.Width, color = irisCluster$cluster)) + geom_point()