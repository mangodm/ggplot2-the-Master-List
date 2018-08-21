## -- 패키지 및 데이터 로드

library(ggplot2)
library(ggExtra)
data(mpg, package = 'ggplot2')

# 산점도 + marginal histogram/boxplot 그리기
theme_set(theme_bw())
mpg_select <- mpg[mpg$hwy >= 35 & mpg$cty > 27, ]

g <- ggplot(mpg, aes(cty, hwy)) +
  geom_count() + geom_smooth(method = 'lm', se=  F)

# ggMarginal 그리기
ggMarginal(g, type = 'histogram', fill = 'transparent') # 히스토그램
ggMarginal(g, type = 'boxplot', fill = 'transparent') # 박스 플롯
ggMarginal(g, type = 'density', fill = 'transparent') # 밀도함수