# 패키지 및 데이터 로드

library(ggplot2)
theme_set(theme_bw()) # bw_theme으로 초기 설정
data('mpg', package = 'ggplot2')

# 산점도(scatterplot) 그리기: 겹치는 데이터 표현법 2) Counts chart
ggplot(mpg, aes(cty, hwy)) + geom_count(col = 'tomato3', show.legend = F) +
         labs(subtitle = 'mpg: city vs. highway mileage',
              y = 'hwy', x = 'cty',
              title = 'Counts plot',
              caption = 'Source: midwest')