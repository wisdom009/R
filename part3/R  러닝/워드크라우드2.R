setwd("D:/workspace/R_date/Part2(비정형데이터)/jeju")
library(KoNLP)
data1=readLines("remake.txt")
data2=sapply(data1, extractNoun, USE.NAMES =F)
data2 #리스트형채만 추출
data3=unlist(data2)
data3=Filter(function(x) {nchar(x) <= 10} ,data3) # 글자길이가 10개 이상이면 제거 
data3

data3= write(unlist(data3), "")
head(unlist(data3),30) #앞 30 글자까지만 나열

data3 = gsub("\\d+","",data3)
data3 = gsub("쌍수","쌍꺼풀",data3)
data3 = gsub("쌍꺼풀","쌍꺼풀",data3)
data3 = gsub("메부리코","메부리코",data3)
data3 = gsub("\\.","",data3)
data3 = gsub(" ","",data3)
data3 = gsub("\\'","",data3)

txt = readLines("성형gsub.txt")
txt
for (i in 1:length(txt)) {
  data3 = gsub((txt[i]), "",data3)
}
data3
data3 = gsub("ㅠㅠㅠㅠ","",data3)
data3 = gsub("수","",data3)
data3 = gsub("기","",data3)

write(unlist(data3), "remake_2.txt")  
data4= read.table("remake_2.txt")
data4
nrow(data4)
wordcount = table(data4)

set.seed(1212)
palete = brewer.pal(9, "Set3")
wordcloud(names(wordcount), freq=wordcount, scale=c(5,1), rot.per = 0.25, min.freq = 1,
          random.order = F, random.color = T, colors = palete)
