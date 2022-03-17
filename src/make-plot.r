library(ggplot2)

plot_df <- read.csv("C:/Users/LinaL/OneDrive/Desktop/Tutorial essays, prac/Computing sessions/question-3/data/average-rainfall.csv")

g <- ggplot(
  data = plot_df,
  mapping = aes(
    x = as.integer(month_num),
    y = average_rainfall,
    colour = location)) +
  geom_point() +
  geom_line() +
  labs(
    x = NULL,
    y = "Average rainfall (mm)",
    colour = "City",
    title = "Rainfall",
    subtitle = "Monthly average (1855--2015)") +
  scale_x_continuous(
    breaks = plot_df$month_num[seq(2,12,2)],
    labels = plot_df$month[seq(2,12,2)]) +
  theme_classic() +
  theme(axis.text.x = element_text(angle = -45))

ggsave(filename = "C:/Users/LinaL/OneDrive/Desktop/Tutorial essays, prac/Computing sessions/question-3/out/result.png",
       plot = g,
       height = 10.5, width = 14.8,
       units = "cm")

sink(file = "C:/Users/LinaL/OneDrive/Desktop/Tutorial essays, prac/Computing sessions/question-3/out/package-versions-make-plot.txt")
sessionInfo()
sink()