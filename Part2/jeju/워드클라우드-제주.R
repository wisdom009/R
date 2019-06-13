setwd("D:/workspace/R_date/Part2(비정형데이터)")
useSejongDic()
mergeUserDic(data.frame(readLines("제주도여행지.txt"),"ncn"))


txt=readLines("jeju.txt")
txt
place = sapply(txt, extractNoun, USE.NAMES = F)
head(unlist(place), 30)
cdata=unlist(place)
place = str_replace_all(cdata, "[^[:alpha:]]", "")   # 한글 영어외에는

place = gsub(" ", "" ,place)

txt = readLines("제주도여행코스gsub.txt")

for (i in 1:length(txt)) {
  place =gsub((txt[i]), "", place)
}

place = Filter(function(x) {nchar(x) >= 2}, place)

write(unlist(place), "jeju_2.txt")
rev= read.table("jeju_2.txt")
nrow(rev)
wordcount = table(rev)
head(sort(wordcount, decreasing = T), 30)

library(RColorBrewer)
palete = brewer.pal(9, "Set1")
wordcloud(names(wordcount),freq = wordcount, scale = c(5,1), rot.per = 0.25, min.freq = 2,
          random.order = F, random.color = T, colors = palete)

wordcloud(names(wordcount),freq=wordcount,scale=c(5,1),rot.per=0.25,min.freq=1,
          random.order=F,random.color=T,colors=palete)
