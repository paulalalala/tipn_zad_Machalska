#Zad 5-1

library(readr)
movies <- read_csv("movies.csv")
View(movies)



#Zad 5-2
#Pokaż wszystkie komedie nakręcone w 2005 roku.

filter(movies, year == 2005, Comedy)



#Zad 5-3
#Pokaż tibble z tytułami, rokiem produkcji i budżetem filmów 
#uszeregowaną od najwyższego do najniższego budżetu.

Budget <- select(movies, title, year, budget)
Budget2 <- arrange(Budget, budget)


#Zad 5-4
#Jaki były najlepsze filmy animowane lat 90-tych?

PosortowaneFilmy <- filter(movies, Animation==1, year>1989, year<2000)
PosortowaneFilmy2 <- arrange(PosortowaneFilmy, rating)


#Zad 5-5
#Jakie są najdłuższe dramaty wszechczasów?

moje_zycie <- filter(movies, Drama == 1)
moje_zycie_to_drama <- arrange(moje_zycie, length)



#Zad 5-6
#Policz średnią i odchylenie standardowe ocen filmów 
#w zależności od ich ratingu MPAA.

Mpaa <- filter(movies, mpaa=='PG-13')
