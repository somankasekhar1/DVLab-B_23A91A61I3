library(ggplot2)

data(iris)
?iris
head(iris)
str(iris)
View(iris)
class(iris)

barplot(table(iris$Species))

barplot(
  table(iris$Species),
  main = "Count of irirs series",
  xlab = "Species",
  ylab = "Number of Flowers",
  col = "lightblue"
)

mean_Sepal <- tapply(iris$Sepal.Length, iris$Species, mean)
mean_Sepal

barplot(
  mean_Sepal,
  col = 'orange',
  main = "Average Sepal Length by Species",
  ylab = "Mean Sepal Length"
)

group_means <- rbind(
  Sepal = tapply(iris$Sepal.Length, iris$Species, mean),
  Petal = tapply(iris$Petal.Length, iris$Species, mean)
)

group_means

group_means1 <- rbind(
  Sepal_L = tapply(iris$Sepal.Length, iris$Species, mean),
  Sepal_W = tapply(iris$Sepal.Width, iris$Species, mean),
  Petal_L = tapply(iris$Petal.Length, iris$Species, mean),
  Petal_W = tapply(iris$Petal.Width, iris$Species, mean)
)

group_means1

barplot(
  group_means,
  beside = TRUE,
  col = c("skyblue","pink"),
  legend.text = TRUE,
  main = "Grouped Bar Chart: Sepal vs Petal Length"
)

barplot(
  group_means,
  beside = FALSE,
  col = c("skyblue","pink"),
  legend.text = TRUE,
  main = "Stacked Bar Chart : Sepal & Petal Length"
)

barplot(
  group_means1,
  beside = TRUE,
  col = c("skyblue", "pink", "lightgreen", "orange"),
  legend.text = TRUE,
  main = "All Features Grouped by Species",
  args.legend = list(x = "topright", cex = 0.7)
)

png("plots/Iris_BarCharts.png")
barplot(table(iris$Species),
        main = "Count of Iris Species",
        xlab = "Species",
        ylab = "Number of Flowers",
        col = "lightblue")
dev.off()