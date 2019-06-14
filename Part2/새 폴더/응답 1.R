library(KoNLP)
library(wordcloud)
library(RColorBrewer)

useSejongDic()
setwd("D:/workspace/R_date/Part2/새 폴더")
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
data3 = gsub("상담내용","",data3)
data3 = gsub("--상담내용","",data3)
data3 = gsub("\\-","",data3)

write(unlist(data3), "응답소gsub_01.txt")
data4=read.table("응답소gsub_01.txt")

nrow(data4)
wordcount = table(data4)

palete = brewer.pal(10, "Set1")
head(sort(wordcount, decreasing=T),20)
wordcloud(names(wordcount),freq=wordcount,scale=c(1,0.5),rot.per=0.25,min.freq=35,
          random.order=F,random.color=T,colors=palete)


#2

data1= readLines("응답소_2015_02.txt")

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
data3 = gsub("상담내용","",data3)
data3 = gsub("--상담내용","",data3)
data3 = gsub("\\-","",data3)

write(unlist(data3), "응답소gsub_02.txt")
data4=read.table("응답소gsub_02.txt")

nrow(data4)
wordcount = table(data4)

palete = brewer.pal(10, "Set1")
head(sort(wordcount, decreasing=T),20)
wordcloud(names(wordcount),freq=wordcount,scale=c(1,0.5),rot.per=0.25,min.freq=10,
          random.order=F,random.color=T,colors=palete)

# 3

data1= readLines("응답소_2015_03.txt")

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
data3 = gsub("상담내용","",data3)
data3 = gsub("--상담내용","",data3)
data3 = gsub("\\-","",data3)

write(unlist(data3), "응답소gsub_03.txt")
data4=read.table("응답소gsub_03.txt")

nrow(data4)
wordcount = table(data4)

palete = brewer.pal(10, "Set1")
head(sort(wordcount, decreasing=T),20)
wordcloud(names(wordcount),freq=wordcount,scale=c(1,0.5),rot.per=0.25,min.freq=10,
          random.order=F,random.color=T,colors=palete)


#4
data1= readLines("응답소_2015_04.txt")

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
data3 = gsub("상담내용","",data3)
data3 = gsub("--상담내용","",data3)
data3 = gsub("\\-","",data3)

write(unlist(data3), "응답소gsub_04.txt")
data4=read.table("응답소gsub_04.txt")

nrow(data4)
wordcount = table(data4)

palete = brewer.pal(10, "Set1")
head(sort(wordcount, decreasing=T),20)
wordcloud(names(wordcount),freq=wordcount,scale=c(1,0.5),rot.per=0.25,min.freq=10,
          random.order=F,random.color=T,colors=palete)

#5
data1= readLines("응답소_2015_005.txt")

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
data3 = gsub("상담내용","",data3)
data3 = gsub("--상담내용","",data3)
data3 = gsub("\\-","",data3)

write(unlist(data3), "응답소gsub_005.txt")
data4=read.table("응답소gsub_005.txt")

nrow(data4)
wordcount = table(data4)

palete = brewer.pal(10, "Set1")
head(sort(wordcount, decreasing=T),20)
wordcloud(names(wordcount),freq=wordcount,scale=c(1,0.5),rot.per=0.25,min.freq=10,
          random.order=F,random.color=T,colors=palete)
#6
data1= readLines("응답소_2015_06.txt")

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
data3 = gsub("상담내용","",data3)
data3 = gsub("--상담내용","",data3)
data3 = gsub("\\-","",data3)

write(unlist(data3), "응답소gsub_06.txt")
data4=read.table("응답소gsub_06.txt")

nrow(data4)
wordcount = table(data4)

palete = brewer.pal(10, "Set1")
head(sort(wordcount, decreasing=T),20)
wordcloud(names(wordcount),freq=wordcount,scale=c(1,0.5),rot.per=0.25,min.freq=10,
          random.order=F,random.color=T,colors=palete)

#7
data1= readLines("응답소_2015_07.txt")

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
data3 = gsub("상담내용","",data3)
data3 = gsub("--상담내용","",data3)
data3 = gsub("\\-","",data3)

write(unlist(data3), "응답소gsub_07.txt")
data4=read.table("응답소gsub_07.txt")

nrow(data4)
wordcount = table(data4)

palete = brewer.pal(10, "Set1")
head(sort(wordcount, decreasing=T),20)
wordcloud(names(wordcount),freq=wordcount,scale=c(1,0.5),rot.per=0.25,min.freq=10,
          random.order=F,random.color=T,colors=palete)

#8
data1= readLines("응답소_2015_08.txt")

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
data3 = gsub("상담내용","",data3)
data3 = gsub("--상담내용","",data3)
data3 = gsub("\\-","",data3)

write(unlist(data3), "응답소gsub_08.txt")
data4=read.table("응답소gsub_08.txt")

nrow(data4)
wordcount = table(data4)

palete = brewer.pal(10, "Set1")
head(sort(wordcount, decreasing=T),20)
wordcloud(names(wordcount),freq=wordcount,scale=c(1,0.5),rot.per=0.25,min.freq=10,
          random.order=F,random.color=T,colors=palete)

#9

data1= readLines("응답소_2015_09.txt")

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
data3 = gsub("상담내용","",data3)
data3 = gsub("--상담내용","",data3)
data3 = gsub("\\-","",data3)

write(unlist(data3), "응답소gsub_09.txt")
data4=read.table("응답소gsub_09.txt")

nrow(data4)
wordcount = table(data4)

palete = brewer.pal(10, "Set1")
head(sort(wordcount, decreasing=T),20)
wordcloud(names(wordcount),freq=wordcount,scale=c(1,0.5),rot.per=0.25,min.freq=10,
          random.order=F,random.color=T,colors=palete)

#10

data1= readLines("응답소_2015_10.txt")

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
data3 = gsub("상담내용","",data3)
data3 = gsub("--상담내용","",data3)
data3 = gsub("\\-","",data3)

write(unlist(data3), "응답소gsub_10.txt")
data4=read.table("응답소gsub_10.txt")

nrow(data4)
wordcount = table(data4)

palete = brewer.pal(10, "Set1")
head(sort(wordcount, decreasing=T),20)
wordcloud(names(wordcount),freq=wordcount,scale=c(1,0.5),rot.per=0.25,min.freq=10,
          random.order=F,random.color=T,colors=palete)

#11

data1= readLines("응답소_2015_11.txt")

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
data3 = gsub("상담내용","",data3)
data3 = gsub("--상담내용","",data3)
data3 = gsub("\\-","",data3)

write(unlist(data3), "응답소gsub_11.txt")
data4=read.table("응답소gsub_11.txt")

nrow(data4)
wordcount = table(data4)

palete = brewer.pal(10, "Set1")
head(sort(wordcount, decreasing=T),20)
wordcloud(names(wordcount),freq=wordcount,scale=c(1,0.5),rot.per=0.25,min.freq=10,
          random.order=F,random.color=T,colors=palete)

#12

data1= readLines("응답소_2015_12.txt")

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
data3 = gsub("상담내용","",data3)
data3 = gsub("--상담내용","",data3)
data3 = gsub("\\-","",data3)

write(unlist(data3), "응답소gsub_12.txt")
data4=read.table("응답소gsub_12.txt")

nrow(data4)
wordcount = table(data4)

palete = brewer.pal(10, "Set1")
head(sort(wordcount, decreasing=T),20)
wordcloud(names(wordcount),freq=wordcount,scale=c(1,0.5),rot.per=0.25,min.freq=10,
          random.order=F,random.color=T,colors=palete)

