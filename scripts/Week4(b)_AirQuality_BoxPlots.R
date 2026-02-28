data(airquality)
?airquality
View(airquality)
str(airquality)
class(airquality)


boxplot(airquality$Ozone,
        main = "Box plot for Ozone",
        ylab = "Ozone",
        col = "steelblue")

airquality$Month <- as.factor(airquality$Month)

boxplot(Ozone ~ Month,
        data = airquality,
        main = "Ozone by Month",
        xlab = "Month",
        ylab = "Ozone",
        col = c('pink','lightgreen','skyblue','orange','purple'))


boxplot(airquality[,1:4],
        main = "Multi Variable Box Plot",
        col = c('pink','lightgreen','skyblue','orange'))


month_colors <- c(
  "5" = "red",
  "6" = "steelblue",
  "7" = "green",
  "8" = "purple",
  "9" = "orange"
)

boxplot(Ozone ~ Month,
        data = airquality,
        main = "Ozone by Month (Custom Color Palette)",
        col = month_colors)


library(ggplot2)

ggplot(airquality,
       aes(x = Month, y = Ozone, fill = Month)) +
  geom_boxplot()

ggplot(airquality,
       aes(x = Month, y = Ozone, fill = Month)) +
  geom_boxplot() +
  scale_fill_manual(
    values = c(
      "5" = "red",
      "6" = "steelblue",
      "7" = "green",
      "8" = "purple",
      "9" = "orange"
    )
  ) +
  theme_minimal()


png("plots/Week4(b)_AirQuality_BoxPlots.png")

boxplot(Ozone ~ Month,
        data = airquality,
        main = "Ozone by Month (Custom Color Palette)",
        col = month_colors)

dev.off()