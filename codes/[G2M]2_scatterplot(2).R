# 패키지 및 데이터 로드
# install.packages('ggalt')
library(ggplot2)
library(ggalt)
options(scipen = 999) # 자연상수(e) 표시하지 않기
theme_set(theme_bw()) # bw_theme으로 초기 설정
data('midwest', package = 'ggplot2')

# 조건을 만족하는 데이터만 subset
midwest_select <- midwest[midwest$poptotal > 350000 & 
                            midwest$poptotal <= 500000 &
                            midwest$area > 0.01 &
                            midwest$area < 0.1, ]

# 산점도(scatterplot) 그리기 + 특정 값만 묶어서 표시
ggplot(midwest, aes(x = area, y = poptotal)) +
  geom_point(aes(col = state, size = popdensity)) +
  geom_smooth(method = 'loess', se = F) + # smoothing line
  xlim(c(0, 0.1)) + ylim(c(0, 500000)) +
  geom_encircle(aes(x = area, y = poptotal),
                data = midwest_select,
                color = 'red',
                size = 2, # 묶는 선 두께
                expand = 0.08) + # 얼마나 크게 묶을 것인지 
  labs(subtitle = 'Area vs. Population', # 부제
       y = 'Population',
       x = 'Area',
       title = 'Scatterplot', # 제목
       caption = 'Source: midwest') # 출처 표시