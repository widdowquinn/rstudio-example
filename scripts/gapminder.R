# Load gapminder data from URL
gapminder <- read.table("https://raw.githubusercontent.com/resbaz/r-novice-gapminder-files/master/data/gapminder-FiveYearData.csv" , sep=",", header=TRUE)

# Import ggplot2
library(ggplot2)

# Plot base and ggplot2
plot(gapminder$lifeExp, gapminder$gdpPercap, col=gapminder$continent)
qplot(lifeExp, gdpPercap, data=gapminder, colour=continent)

# Create ggplot2 scatterplot
p <- ggplot(data=gapminder, aes(x=lifeExp, y=gdpPercap))
p <- p + geom_point(alpha=0.4, aes(color=continent))
p + scale_y_log10() + geom_density_2d()

# Challenge 15
p <- ggplot(data=gapminder, aes(x=year, y=lifeExp, color=continent, group=country))
p + geom_line() + scale_y_log10() + facet_wrap(~continent)


