# 패키지 및 데이터 로드
library(ggplot2)
options(scipen = 999) # 자연상수(e) 표시하지 않기
theme_set(theme_bw()) # bw_theme으로 초기 설정
data('midwest', package = 'ggplot2')

# 산점도(scatterplot) 그리기
gg <- ggplot(midwest, aes(x = area, y = poptotal)) +
  geom_point(aes(col = state, size = popdensity)) +
  geom_smooth(method = 'loess', se = F) + # smoothing line
  xlim(c(0, 0.1)) + ylim(c(0, 500000)) +
  labs(subtitle = 'Area vs. Population', # 부제
       y = 'Population',
       x = 'Area',
       title = 'Scatterplot', # 제목
       caption = 'Source: midwest') # 출처 표시

gg
