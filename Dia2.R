LOL_data_neta$date_release <- as.Date(LOL_data_neta$date_release, format = "%d/%m/%Y")

# Apartat 1

barplot(table(dades$MS),
        xlab = "MS",
        ylab = "Nombre de files",
        main = "Distribució de MS")

# Apartat

install.packages("ggplot2")
library(ggplot2)

 ggplot(dades, aes(x = date_release, y = difficulty)) +
  geom_point(color = "steelblue", alpha = 0.6) +
  geom_hline(yintercept = mean(dades$difficulty, na.rm = TRUE),
  color = "red", alpha = 0.5, linewidth = 1) +
  labs(x = "Data de publicació", y = "Dificultat") +
  theme_minimal()