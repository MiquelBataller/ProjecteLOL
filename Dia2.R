LOL_data_neta$date_release <- as.Date(LOL_data_neta$date_release, format = "%d/%m/%Y")

# Apartat 1

barplot(table(dades$MS),
        xlab = "MS",
        ylab = "Nombre de files",
        main = "Distribució de MS")

# Apartat
dades = LOL_data_neta

boxplot(dades$MS,xlab="Velocitat de moviment")
hist(dades$MS,xlab="Velocitat de moviment",ylab = "Quantitat de personatges",breaks = 10)
summary(dades$MS)

y_transformada <- ifelse(dades$popularity == 0, dades$popularity + 0.01, dades$popularity)

# 2. Gràfic amb eix Y logarítmic
plot(x = dades$skin_count, 
     y = y_transformada,
     log = "y",                        # <--- Això activa l'escala logarítmica a l'eix Y
     main = "Relació (Escala Logarítmica en Y)",
     xlab = "Quantitat de Skins",
     ylab = "Popularitat (%) - Escala Log",
     pch = 16, 
     col = rgb(0.1, 0.5, 0.8, 0.4),    # Més transparència (40%) per veure la densitat
     las = 1)

summary(dades$skin_count)


