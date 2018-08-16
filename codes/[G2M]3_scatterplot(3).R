# 패키지 및 데이터 로드

# install.packages('ggalt')
library(ggplot2)
theme_set(theme_bw()) # bw_theme으로 초기 설정
data('mpg', package = 'ggplot2')

# 산점도(scatterplot) 그리기: 겹치는 데이터까지 포함하지 못함.
ggplot(mpg, aes(cty, hwy)) + geom_point() +
       geom_smooth(method = 'lm', se = F) +
         labs(subtitle = 'mpg: city vs. highway mileage',
              y = 'hwy', x = 'cty',
              title = 'Scatterplot with overlapping points',
              caption = 'Source: midwest')
