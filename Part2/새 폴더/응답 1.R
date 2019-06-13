useSejongDic()
setwd("D:/workspace/R_date/Part2")
data1= readLines("응답소_2015_01.txt")

data2 = sapply(data1, extractNoun, USE.NAMES = F)

data3 = unlist(data2)

data3= Filter(function(x) {nchar(x) >= 2}, data3)

head(unlist(data3),30)
data3 = str_replace_all(cdata, "[^[:alpha:]]", "")
data3 = gsub("\\='","",data3)
data3 = gsub("\\'","",data3)
data3 = gsub("\\.","",data3)
data3 = gsub("\\d+","",data3)
data3 = gsub("[ㄱ-ㅎ]","",data3)
data3 = gsub("(ㅜ|ㅠ)","",data3)
data3 = gsub("[0-9]","",data3)
data3 = gsub("[a-z]","",data3)
data3 = gsub("[A-Z]","",data3)
data3 = gsub(" ","",data3)
data3 = gsub("Q","",data3)
data3 = gsub("","",data3)
data3 = gsub("제목","",data3)
data3 = gsub("아니고","",data3)
data3 = gsub("서울시","",data3)
data3 = gsub("서울","",data3)
data3 = gsub("애완견","",data3)
data3 = gsub("목줄","",data3)

write(unlist(data3), "응답소gsub_01.txt")
data4=read.table("응답소gsub_01.txt")

nrow(data4)
wordcount = table(data4)
wordcount
0
palete = brewer.pal(10, "Set2")

wordcloud(names(wordcount),freq=wordcount,scale=c(6,1),rot.per=0.25,min.freq=1,
          random.order=F,random.color=T,colors=palete)
