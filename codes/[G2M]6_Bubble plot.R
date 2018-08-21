## -- 패키지 및 데이터 로드
library(ggplot2)
data(mpg, package = 'ggplot2')

# 원하는 데이터 subset
mpg_select <- mpg[mpg$manufacturer %in% c('audi', 'ford', 'honda', 'hyundai'), ]

# 산점도 그리기
theme_set(theme_bw())
g <- ggplot(mpg_select, aes(displ, cty)) +
  labs(subtitle = 'mpg: Displacement vs. City Mileage',
       title = 'Bubble chart')

g + geom_jitter(aes(col = manufacturer, size = hwy)) +
  geom_smooth(aes(col = manufacturer), method = 'lm', se = F)