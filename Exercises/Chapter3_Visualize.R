
# 3.6 Geometric objects ---------------------------------------------------

ggplot(mpg)+
  geom_point(mapping = aes(x= displ, y = hwy))

ggplot(mpg)+
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(mpg)+
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))


#There is no legend for group in aes
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))

# display multiple aes in one plot
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, col=drv)) +
  geom_smooth(mapping = aes(x = displ, y = hwy, col=drv))

#aes in ggplot()
ggplot(mpg, mapping = aes(x = displ, y = hwy))+
  geom_point(mapping = aes(col=drv))+
  geom_smooth()

#local geom() overide ggplot()
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class)) +
  geom_smooth(data = filter(mpg, class == "subcompact"), se = FALSE)

#1.
geom_line()
geom_boxplot()
geom_histogram()
geom_area()

#2 & 3
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv), show.legend = FALSE) +
  geom_point() +
  geom_smooth(se = FALSE)


# 3.7 Statistical Transformations -----------------------------------------

ggplot(data = diamonds)+
  geom_bar(mapping = aes(cut))
#3.7.1
geom_pointrange(stat = summary)


# Position Adjustments ----------------------------------------------------

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x=cut, fill=cut))
# alpha is to define the transparence of filling
ggplot(data = diamonds, mapping = aes(x = cut, fill = clarity)) +
  geom_bar(alpha = 1/5, position = "identity")
ggplot(data = diamonds, mapping = aes(x = cut, colour = clarity)) +
  geom_bar(fill = NA, position = "identity")
# positon = 'fill' the same height of each bar, compare between echa group
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut,fill = clarity), position = "fill")
#position= 'dodge' not stack in one bar
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "dodge")
