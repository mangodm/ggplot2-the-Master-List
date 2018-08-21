## -- 패키지 및 데이터 로드

library(ggplot2)
library(ggcorrplot)
install.packages('ggcorrplot')

# 상관행렬 생성
data(mtcars)
corr <- round(cor(mtcars), 1)

# plot 그리기
ggcorrplot(corr, hc.order = TRUE,
           type = 'lower',
           lab = TRUE,
           lab_size = 3,
           method = 'circle',
           colors = c('tomato2', 'white', 'springgreen3'),
           title = 'Correlogram of mtcars',
           ggtheme = theme_bw)