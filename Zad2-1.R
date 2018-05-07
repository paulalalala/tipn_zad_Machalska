kwartal_1 <- c("Styczen", "Luty", "Marzec")
kwartal_2 <- c("Kwiecien", "Maj", "Czerwiec")
kwartal_3 <- c("Lipiec", "Sierpien", "Wrzesien")
kwartal_4 <- c("Pazdziernik", "Listopad", "Grudzien")
rok <- c(kwartal_1, kwartal_2, kwartal_3, kwartal_4)
rok[1:2]
rok[8:12]
rok [c(1, 3, 5, 7, 9, 11)]
nchar (rok)
rok [c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)]
nchar (rok)
mean(nchar(rok))
sd(nchar(rok))
zimowe_miesiace <- rok [c(1, 2, 3, 12)]
nchar (zimowe_miesiace)
mean(nchar(zimowe_miesiace))
sd(nchar(zimowe_miesiace))
subset(rok, endsWith(rok, "ec"), TRUE)
