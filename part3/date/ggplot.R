#ggplot

install.packages("ggplot2")
library(ggplot2)
setwd("d:/workspace/R_date/part3/date")

kor = read.table("학생별국어성적_new.txt",header=T,sep=",")
kor
ggplot(kor,aes(x=이름,y=점수)) + geom_point()
ggplot(mapping = aes(x=이름, y=점수),data=kor) + geom_point()  #aes 값을 뭘로주느냐가 ggplot의 핵심
ggplot(kor,aes(x=이름,y=점수)) + geom_bar(stat = "identity") # stat 원래는 각 종목별 근데 이건 각각 
ggplot(kor,aes(x=이름,y=점수)) + geom_bar(stat = "identity", fill="blue", color="red")

ggplot(kor,aes(x=이름,y=점수)) + geom_bar(stat = "identity", fill="blue", color="red") + 
  theme(axis.text.x =element_text(angle = 45, hjust = 1, vjust = 1, color = "black", size = 10)) 
# x element = x축에대한 angle 각도를 45도 기울임 색은 금색 크기 10 등등


score=read.csv("학생별과목별성적_국영수_new.csv", header=T)
score
#
library(dplyr)
sort=arrange(score,이름,과목)
sort
sort2 = sort %>%  
  group_by(이름) %>%
  mutate(누적합계=cumsum(점수)) # sort 에서 그룹= 이름 별로 점수르 구해 누적 합을 구함
sort2
sort3 = sort2  %>%
  group_by(이름) %>%
  mutate(label=cumsum(점수)-0.5 * 점수) #각각 자리에 래이블이 위치하게 만듬
sort3

#  1 
sort4 = sort %>%
  group_by(이름) %>%
  mutate(누적합계=cumsum(점수)) %>%
  mutate(누적합계=cumsum(점수)- 0.5 *점수)

# 2

sort5 = sort %>%
  group_by(이름) %>%
  mutate(누적합계=cumsum(점수)) %>%
  mutate(누적합계=cumsum(점수), label=cumsum(점수)-0.5*점수)
sort5

ggplot(sort5, aes(x=이름,y=점수,fill=과목)) +
  geom_bar(stat="identity") +
  geom_text(aes(y=label,label=paste(점수,'점')), color="black", size=4) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1,vjust = 1,colour = "black",size = 9))

score=read.csv("학생별전체성적_new.txt",header=T,sep=",")
score
score_e = score[,c("이름","영어")] # 이름과 영어만 따로 분리
score_e
ggplot(score,aes(x=영어,y=reorder(이름,영어))) +
  geom_point(size=6)+
  theme_bw()+
  theme(panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.grid.major.y = element_line(color = "red",linetype = "dashed"))

ggplot(score,aes(x=영어,y=reorder(이름,영어))) +
  geom_segment(aes(yend=이름),xend=0,color="blue") +  # 라인을 그려주는게 segment 
  geom_point(size=6, color="green")+
  theme_bw()+
  theme(panel.grid.major.y = element_blank())


#----------------------------------------------------------------------------------------


# 

install.packages("gridExtra")
library(gridExtra)

mtcars

str(mtcars) # 정보 간소화

ggplot(mtcars,aes(x=hp, y=mpg)) +
  geom_point()

ggplot(mtcars,aes(x=hp, y=disp)) +
  geom_point()

ggplot(mtcars,aes(x=hp, y=mpg)) +
  geom_point(color="red") +
  geom_line()





ggplot(mtcars,aes(x=hp, y=mpg)) +
  geom_point(aes(colour = 'blue'))

ggplot(mtcars,aes(x=hp, y=mpg)) +
  geom_point(aes(color = factor(am)))

ggplot(mtcars,aes(x=hp, y=mpg)) +
  geom_point(size=7)

ggplot(mtcars,aes(x=hp, y=mpg))  + 
  geom_point(aes(color = factor(am), size=wt))

ggplot(mtcars,aes(x=hp, y=mpg))  + 
  geom_point(aes(shape = factor(am), size=wt))

ggplot(mtcars,aes(x=hp, y=mpg))  + 
  geom_point(aes(color = factor(am), size=wt)) +
  scale_color_manual(values = c("red","green"))

par(oma=c(12,1,12,1))

ggplot(mtcars,aes(x=hp, y=mpg))  + 
  geom_point(aes(color = factor(am), size=wt)) +
  scale_color_manual(values = c("red","green")) +
  labs(x="마력",y="연비(mile/gallon)")

three = read.csv("학생별과목별성적_3기_3명.csv")
three
ss = arrange(three, 이름 ,과목)
ss
ggplot(three, aes(x= 과목, y=점수, color=이름,  group=이름))+
  geom_line() 

ggplot(three, aes(x= 과목, y=점수, color=이름,  group=이름))+
  geom_line() +
  geom_point(size=3)

ggplot(ss, aes(x=과목, y=점수, color = 이름, group=이름, fill=이름)) + geom_line() +geom_point(size=6, shape=22)

dis =read.csv("1군전염병발병현황_년도별.csv",stringsAsFactors=F)
dis
str(dis)

ggplot(dis, aes(x=년도별, y=장티푸스, group=1))+
  geom_line()

ggplot(dis, aes(x=년도별, y=장티푸스, group=1))+
  geom_area(color="red",fill="cyan",alpha=0.4)

ggplot(dis, aes(x=년도별, y=장티푸스, group=1))+
  geom_area(color="red",fill="cyan",alpha=0.4) +
  geom_line(color="blue")


# -----------------------------------------------------------------
# Anscombe's Quarrtet 기술 통계량
anscombe
an = anscombe
an

an1 = anscombe &>&
  select(an, x1, x2, x3, x4) %>%
  summarise_each(list(mean), x1, x2, x3, x4)

