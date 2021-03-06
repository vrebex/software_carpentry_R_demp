install.packages("ggplot2",dependencies=TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

library("ggplot2")
library("plyr")
library("ggthemes")
library("reshape2")
head(iris)
df <- melt(iris, id.vars = "Species")
myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width))
myplot + geom_point()
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point(aes(shape = Species),size = 3)
d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]
my2ndplot <- ggplot(data = d2, aes(x = carat, y = price))
my2ndplot + geom_point()
ggplot(d2, aes(carat, price, color = color)) + geom_point(size = 3)
ggplot(d2, aes(carat, price, color = color)) + geom_point(size = 2)

library(MASS)
ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point() + facet_wrap(~ Species)
library(RColorBrewer)
display.brewer.all()
df <- melt(iris,id.vars = "Species")
ggplot(df, aes(Species, value, fill = variable)) + geom_bar(stat = "identity", position = "dodge") + scale_fill_brewer(palette = "Set1")
h <- ggplot(faithful, aes(x = waiting))
h + geom_histogram(binwidth = 8, colour = "black")
ggplot(df, aes(clarity, value, fill = variable)) + geom_bar(stat = "identity", position = "dodge") + scale_fill_brewer(palette = "Set1")

ggplot(d2, aes(clarity, fill = cut)) + geom_bar(position = "dodge")
