install.packages("treemap")
library(treemap)
total = read.csv("학생시험결과_전체점수.csv")
total

treemap(total,vSize="점수",index=c("점수","이름"))
treemap(total,vSize="점수",index=c("조","이름"))
treemap(total,vSize="점수",index=c("점수","조","이름"))

total = read.csv("학생별전체성적_new.txt")
row.names(total) = total$이름
total = total[,2:7]
total
stars(total,flip.labels = F,draw.segments = F,frame.plot = T,full = T, main = "학생별 과목별 성적분석_star chart")

savePlot("star_1.png",type="png")

lab = names(total)

value = table(lab)

value

pie(value, labers=lab, radius = 0.1, cex = 0.6, col = NA)

stars(total,flip.labels = F,draw.segments = TRUE, frame.plot = TRUE, full = TRUE, main = "학생별 과목별 성적분것_나이팅게일 차트")

label = table(total)
value = table(label)
color=c("black","red","blue","cyan","violet")
pie(value,labels = label, col = color, radius = 0.1, cex=0.6)


lab = names(total)

value = table(lab)

runif(10,1,10) #1~10 10번 랜덤
rnorm(10,5,2)
install.packages("fmsb")
library(fmsb)

layout=data.frame(
  분석력=c(5,1),
  창의력=c(15,3),
  판단력=c(3,0),
  리서쉽=c(5,1),
  사교성=c(5,1))
set.seed(123)
data1=data.frame(
  분석력=c(3,5,1),
  창의력=c(3,10,2),
  판단력=c(0.5,NA,3),
  리서쉽=c(3,1,5),
  사교성=c(5,2.5,4))
data2=rbind(layout,data1)
op =par(mar=c(1,0.5,3,1),mfrow=c(2,2))
radarchart(data2,axistype = 1, seg=5, plty=1, title="first")
radarchart(data2,axistype = 2, pcol=topo.colors(3), plty=1, title="second")
radarchart(data2,axistype = 3, seg=5, pty=32,plty=1,axislabcol = "grey", na.itp = F,  title="Thirth")
radarchart(data2,axistype = 0, plwd=1:5, pcol=1, title="zero")

