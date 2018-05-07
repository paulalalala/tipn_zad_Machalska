# Zad. 4.1
# ?mpg
# 
# 1. 11
# 
# 2. 234
# 
# 3. miles per galon - liczba mil odpowiadająca spalaniu jednego galon 
# engine displacement - pojemność silnika
# 
# 4. ZMIENNE:
#   
#   manufacturer model - nazwa modelu
#  displ - pojemność silnika (w litrach)
#  year - rok manufaktury
#  cyl - numer cylindra
#  trans - typ transmisji
#  drv:
#  f = napęd na przednie koła, r = napęd na tylne koła
#    cty - liczba mil miejskich przypadających na spalanie jednego galonu 
#   hwy - liczba mil na autostradzie przypadające na spalenie jednego galonu
#   fl - typ paliwa
#   class - "typ" auta


#Zad.4.2

ggplot(data = mpg)+
  geom_point(mapping = aes(x = displ, y = cty))

#Zad.4.3

ggplot(data = mpg)+
  geom_bar(mapping = aes(x = class, fill = class)) +
  labs(title = "Auta", x = "Klasa", y = "Ilość samochodów")
   

#Zad.4.4 
 
ggplot(data = mpg) +
  geom_histogram(mapping = aes(displ), bins = 10) +
labs(title = "Auta", x = "pojemność silnika", y = "litry")

#Zad.4.5

ggplot(data = mpg, aes(x = class, y = displ)) +
  geom_boxplot() +
  labs(title = "Auta", x = "Klasa samochodu", y = "Pojemność silnika") +
  coord_flip()
