x <- 1.5 # sijoittaa luvun 1.5 objektiin x
x # tulostaa x:n tiedot konsoliin
y <- 1:5 # sijoittaa luvut 1-5 objektiin y
y2 <- y*2 # y2 on kaksi kertaa y:n arvot
?sample # avaa sample-funktion ohjesivun
sample(y,2) # poimii 2 havainnon satunnaisotoksen y-objektista

library(datas4uef)
data(aineistoA_dat)


x <- c(1,2,2,3)
x_nom <- factor(x,levels=c(1,2,3),labels=c("Eri mieltä", "Samapa tuo","Samaa mieltä"))
x_nom

x_ord <- factor(x,levels=c(1,2,3),
                labels=c("Eri mieltä", "Samapa tuo","Samaa mieltä"),
                ordered=TRUE)
x_ord

dat <- data.frame(id=1:7,
                  sukupuoli=c("mies","nainen","nainen","nainen","mies","nainen","mies"))
dat
tab <- table(dat$sukupuoli)
round(prop.table(tab)*100,1)


# histogrammi
dat2 <- data.frame(id=1:9,
                  x=c(5.12,6.47,8.38,8.72,9.39,10.41,10.92,12.07,13.79))
dat2
hist(dat2$x)
hist(dat2$x,7)
