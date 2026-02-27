?VADeaths
class(VADeaths)
help(class)
va_df <- as.data.frame(VADeaths)
class(va_df)
View(va_df)
va_df$AgeGroups <- row.names(VADeaths)
View(va_df)
va_long = reshape(va_df,
                  direction = "long",
                  varying = colnames(VADeaths) ,
                  v.names = "DeathRate",
                  timevar = "Population",
                  times = colnames(VADeaths))
View(va_long)           

hist(va_long$DeathRate,
     main = "Basic Histogram of VA Deathrates",
     xlab = "VA DeathRates",
     ylab = "Frequency",
     labels = TRUE,
     col = "pink",
     border = "red")

library(ggplot2)
ggplot(
  va_long,
  aes(x = DeathRate))+
  
  geom_histogram(bins = 5,fill = "steelblue", col = "yellow")+
  labs(
    title ="GGPLOT-Histogram",
    x = "DeathRate",
    y = "Frequency")+
  #facet_wrap(~population)
  theme_light()
ggsave("plots/va_histogram.png")