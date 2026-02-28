data(airquality)

?airquality
head(airquality)
str(airquality)
class(airquality)

aq_clean <- na.omit(airquality)

mean_ozone <- tapply(aq_clean$Ozone,
                     aq_clean$Month,
                     mean)

mean_ozone

barplot(mean_ozone,
        main = "Average Ozone by Month",
        xlab = "Month",
        ylab = "Mean Ozone",
        col = "lightblue")


aq_clean$Ozone_Level <- cut(aq_clean$Ozone,
                            breaks = 3,
                            labels = c("Low", "Medium", "High"))

ozone_table <- table(aq_clean$Month,
                     aq_clean$Ozone_Level)

ozone_table

barplot(ozone_table,
        beside = FALSE,
        col = c("skyblue", "orange", "red"),
        legend.text = TRUE,
        main = "Stacked Bar Plot of Ozone Levels by Month",
        xlab = "Month",
        ylab = "Count")

png("plots/Week3(b)_airquality_Ozone_BarChart.png")

barplot(ozone_table,
        beside = FALSE,
        col = c("skyblue", "orange", "red"),
        legend.text = TRUE,
        main = "Stacked Bar Plot of Ozone Levels by Month",
        xlab = "Month",
        ylab = "Count")

dev.off()