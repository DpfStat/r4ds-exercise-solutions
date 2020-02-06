library(tidyverse)
library(nycflights13)

# 5.2.4 -------------------------------------------------------------------

1.
filter(nycflights13::flights, arr_delay>120)
filter(flights, dest %in% c('IAH','HOU'))
filter(flights, carrier %in% c('UA', 'AA', "DL"))
filter(flights, month %in% 7:9)
filter(flights, arr_delay>120 , dep_delay <= 0)
filter(flights, dep_delay>=60, dep_delay-arr_delay>30)
filter(flights, dep_time<=600 | dep_time==2400)
