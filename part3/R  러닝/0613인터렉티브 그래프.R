install.packages("plotly")
library(plotly)
library(ggplot2)
setwd('D:/workspace/R_date/Part2/Stage3_StructuredData')
data1 <- read.csv("2013년_서울_주요구별_병원현황.csv" , header=T)
data1
barplot(as.matrix(data1[1:9,2:11]),
        main=paste("서울시 주요 구별 과목별 병원 2013년"), ylab="병원수", beside=T ,
        col=rainbow(8),ylim=c(0,350))
abline(h=seq(0.350,10),lty=3,lwd=0.2)
name = data1$표시과목        
name
legend(60,350,name, cex=0.8,fill=rainbow(8),bg="white")

# ~~~~~~~~~~~~~~
head(data1, 10)
ggplot(data1, aes(x="지역명", y="의원수", fill=표시과목)) +
  geom_bar(position = 'dodge', stat = 'identity') +
  geom_hline(yintercept = seq(0,330,10), lty='dashed', size=0.1)+
  ggtitle(paste("서울싱ㅇ"))+
  theme(plot.title = element_text(face = "bold" , hjust = 0.5,
                                  size = 15, color = "darkblue"))


  # 2 ------------------wide format 을 long format으로 변환
df_data1 = melt(data1, id = c('표시과목'),
                variable.names='지역명', value.name='의원수')
head(df_data1)
p = ggplot(df_data1, aes(x=지역명, y=의원수, fill=표시과목)) +
  geom_bar(position = 'dodge', stat = 'identity') +
  geom_hline(yintercept = seq(0,330,10), lty='dashed', size=0.1)+
  ggtitle(paste("서울싱ㅇ","\n", "출처~~~"))+
  theme(plot.title = element_text(face ="bold", hjust = 0.5,
                                  size = 15, color = "darkblue"))
# 인터렉티브 그래프
ggplotly(p)





