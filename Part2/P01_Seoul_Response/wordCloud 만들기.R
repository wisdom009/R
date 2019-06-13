setwd("D:/workspace/R_date/Part2(비정형데이터)/P01_Seoul_Response")
install.packages("rJava")
library(rJava)
install.packages("KoNLP")
install.packages("wordcloud")
library(KoNLP)
library(wordcloud)

useSejongDic()
murgeUserDic(data.frame(readLines(:제주도여행지.txt)))
data1=readLines("seoul_new.txt")
data1  #파일에서 읽은 raw data 한글문장
data2  #명사들만 있는 데이터
extractNoun('')
data2= sapply(data1, extractNoun, USE.NAMES = F)
head(unlist(data2, 30))
data3 = unlist(data2)
data3 = gsub("\\d+","",data3)
data3 = gsub("서울시","",data3)
data3 = gsub("서울","",data3)
data3 = gsub("요청","",data3)
data3 = gsub("제안","",data3)
data3 = gsub(" ","",data3)
data3 = gsub("-","",data3)
data3  
#파일에 특정 요소를 지우고 

write(unlist(data3), "seoul_new.txt")
# 저장 후 다시읽기
data4=read.table("seoul_new.txt")
data4
head(data4)
wordcount=table(data4)  # 같은 단어의 출력 개수
wordcount
head(sort(wordcount, decreasing = T), 20)
data3 = gsub("OO","",data3)
data3 = gsub("개선","",data3)
data3 = gsub("문제","",data3)
data3 = gsub("관리","",data3)
data3 = gsub("민원","",data3)
data3 = gsub("이용","",data3)
data3 = gsub("관련","",data3)
data3 = gsub("시장","",data3)
data3 = gsub("님","",data3)


 
palete = brewer.pal(9, "Set3")

wordcloud(names(wordcount),freq=wordcount,scale=c(5,1),rot.per=0.25,min.freq=1,
          random.order=F,random.color=T,colors=palete)
# words 출력단어들
# freq 언급된 빈도 수
# scale 단어 크기
# min.freq 어급 최소 빈도

extractNoun(v3)

v3=c("봄봄봄이 왔네요")


v4  
  
wordcloud(c(letters, LETTERS, 0:9),freq=wordcount,scale=c(5,1),rot.per=0.25,min.freq=1,
          random.order=F,random.color=T,colors=palete)  


