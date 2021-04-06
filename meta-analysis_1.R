# 메타분석

install.packages("meta")
install.packages("metafor")

library(meta)
library(metafor)

# 두 집단(사후검사) 

# 자아존중감에 대한 멘토링 데이터
mentoring <- read.csv("./mentoring.csv")
mentoring

# 효과크기분석
meta1 <- metacont(n1,m1,s1,n2,m2,s2, sm="SMD",study,data=mentoring)
meta1

# forest-plot
forest(meta1, digits.mean=0, digits.sd=0,comb.fixed = FALSE,col.diamond = "green",col.square = "pink",col.square.lines = "black")
