data(iris)

?iris
head(iris)
str(iris)
class(iris)
View(iris)

boxplot(iris$Sepal.Length,
        main = "Box Plot for Sepal Length",
        ylab = "Sepal Length",
        col = "cyan")

boxplot(
  Sepal.Length ~ Species,
  data = iris,
  main = "Sepal Length by Species",
  xlab = "Species",
  ylab = "Sepal Length",
  col = c("red", "blue", "green")
)

boxplot(
  iris[,1:4],
  main = "Multi Variable Box Plot",
  col = c("orange", "purple", "yellow", "gray")
)


species_colors <- c(
  "setosa" = "red",
  "versicolor" = "blue",
  "virginica" = "green"
)

boxplot(
  Sepal.Width ~ Species,
  data = iris,
  main = "Sepal Width by Species (Custom Colors)",
  col = species_colors
)  

library(ggplot2)

ggplot(iris,
       aes(x = Species,
           y = Sepal.Length,
           fill = Species)) +
  geom_boxplot() +
  scale_fill_manual(values = c(
    "setosa" = "red",
    "versicolor" = "blue",
    "virginica" = "green"
  )) +
  theme_minimal() +
  labs(
    title = "Sepal Length by Species (ggplot)",
    x = "Species",
    y = "Sepal Length"
  )

ggsave("plots/Week4(a)_Iris_BoxPlots.png")