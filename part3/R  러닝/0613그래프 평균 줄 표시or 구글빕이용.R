setwd('D:/workspace/R_date/Part2/Stage3_StructuredData')
count = read.csv("연도별요양기관별보험청구건수_2001_2013_세로.csv",
                 stringsAsFactors= F)
count

colname <- count$년도
colname
v1 <- count[,2]/100000
v2 <- count[,3]/100000
v3 <- count[,4]/100000
v4 <- count[,5]/100000
v5 <- count[,6]/100000
v6 <- count[,7]/100000
v7 <- count[,8]/100000
v8 <- count[,9]/100000
v9 <- count[,10]/100000
v10 <- count[,11]/100000

plot(v1, xlab="",ylab="",ylim = c(0,10000), axes=F, col="violet", type = "o", lwd=2,
     main=paste("연도별 금액", "\n" , "출처:검보심"))


# 년도
axis(1, at=1:10, label = colname, las=2)
#금액
axis(2,las=1)

# 각 년도별 금액 그래프
lines(v2, col = "blue",type="o",lwd=2)
lines(v3, col = "red",type="o",lwd=2)
lines(v4, col = "black",type="o",lwd=2)
lines(v5, col = "orange",type="o",lwd=2)
lines(v6, col = "cyan",type="o",lwd=2)
lines(v7, col = "yellow",type="o",lwd=2)
lines(v8, col = "brown",type="o",lwd=2)
lines(v9, col = "green",type="o",lwd=2)
lines(v10, col = "navy",type="o",lwd=2)

abline(h=seq(0,15000, 10000), v=seq(1,100,1),lty=3,lwd=0.2)
col = names(count[1,2:11])
colors=c("blue","red","black","orange","cyan","yellow",
         "brown","green","navy")
legend(1,10000,col,cex=0.8,col=colors,lty=1,lwd=2,bg="white")         
  
count2$
ggplot(count2)


# -----3-5 ---------------------------------------------------------
library(ggplot2)
library(reshape2)
library()
windowsFonts(malgun = windowsFont("맑은 고딕"))

count=read.csv("연도별요양기관별보험청구금액_2004_2013_세로.csv")
count
count2 = melt(count, id = c('년도'), variable.names ='병원종류', value.name = '금액')
count2 = as.data.frame(count)
count$금액 =  금액/1000000
options(2)

ggplot(count, aes(x=년도, y="금액", fill='병원종류', color='병원종류')) +
  geom_line(linetype=1, size=1) +
  geom_point(size=3) +
  geom_hline(yintercept = seq(0,8000,1000), lty='dotted', size=0.1)+
  theme_classic(base_family = "malgum", base_size = 10)+
  ggtitle(paste('연도별 기관 보험청구금액','\n', '(단위:백만원)'))+
  theme(plot.title = element_text(family="malgun", face= "bold", hjust = 0.5,
                                  size = 15, color = "darkblue"))
  

# 연습문제 야구
bb= read.csv("야구성적.csv")
bb
ggplot(bb, aes(x=선수명,y=연봉대비출루율))+
  geom_bar(stat = 'identity')

mean_ops = mean(bb$연봉대비출루율)

ggplot(bb, aes(x=선수명, y=연봉대비출루율))+
  geom_bar(stat = 'identity', fill=palete) +
  geom_text(aes(y=연봉대비출루율+0.8, label=연봉대비출루율), # 그래프 바 위에 있는 텍스트 
            color="black", size=3)+
  theme(axis.text.x=element_text(angle=45, hjust=1, vjust=1,
                                 colour="black", size=9)) +
  ggtitle('프로야구선수 밥값은 하고 있나?') +
  theme(plot.title = element_text(face = "bold", hjust = 0.5, 
                                  size = 15, color = "darkblue")) +
  geom_hline(yintercept=mean_obp, color='purple', linetype = 'dashed') # 평균 값을 보여주는 선


pie(value, labels=label, radius=0.1,cex=0.6)

#구글 차트
library(dplyr)
library(googleVis)
data = read.csv("2013년_서울_구별_주요과목별병원현황_구글용.csv")
data

has = gvisColumnChart(data, options = list(title="지역별 병원현황",
                                           height=400,weight=500))
plot(has)
header= has$html$header
header = gsub('charset=utf-8', 'charset=euc-kr',header)
has$html$header = header
plot(has)
