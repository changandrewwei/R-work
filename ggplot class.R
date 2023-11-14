library(ggplot2)
library(gridExtra)
library(dplyr)
library(magrittr)
ggplot(hw8,aes(x=AREA,color=AREA))+geom_bar()+theme_bw()

ggplot(hw8,aes(x=AGE,y=SALARY,color=AREA))+geom_col()+theme_bw()

ggplot(hw8,aes(x=AGE,fill=AREA))+geom_histogram()+theme_bw()

ggplot(hw8,aes(x=AGE,fill=AREA))+geom_histogram(bins = 20)+theme_bw()

ggplot(hw8,aes(x=AGE,color=AREA))+geom_boxplot()+theme_bw()

ggplot(hw8,aes(x=AGE,y=SALARY,color=AREA))+geom_point(size=2,shape=20)+
  geom_line()+theme_bw()

group_by(hw8,AREA)%>%summarise(salary.ratio=mean(SALARY))%>%
  ggplot(aes(x=AREA,y=salary.ratio))+geom_col()

ggplot(hw8,aes(x=AGE,y=SALARY,color=AREA))+geom_line()+theme_bw()

grid.arrange(g1,g2,g3,g4,g5,g6,nrow=3)

v=c(32,11,25,1,2,44,52)
hist(v,xlab="num",col="red",border="black")

ggplot(STCStatics,aes(x=static,fill=static))+geom_histogram(bins=6)+theme_bw()

