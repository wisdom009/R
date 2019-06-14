install.packages("tm")
setwd("d:/workspace/R_date/part3/date")
library(tm)
library(wordcloud)

data1=readLines("tm_test1.txt")
data1
class(data1)
data1 = iconv(data, "windows-1252","UTF-8")
cnt_txt=length(txt)
cnt_txt
for (i in 1:cnt_txt) {
  place =gsub((txt[i]),"", place)
}
corp1= Corpus(VectorSource(data1))
corp1 = TermDocumentMatrix(data1)
inspect(corp1)
tdm =  TermDocumentMatrix(corp1)


data1= iconv(data1,"")

stopwords('en')
stopwords('dutch')
corp2 = tm_map(corp1, stripWhitespace)
corp2 = tm_map(corp1, tolower)
corp2 = tm_map(corp1, removeNumbers )
corp2 = tm_map(corp1, removePunctuation)

corp2 = tm_map(corp2, removeWords, stopwords('en'))

tdm2 = TermDocumentMatrix(corp2)
m2 = as.matrix(tdm2)

colnames(m2) = seq(10,40,10)
m2
freq1 = sort(rowSums(m2),decreasing=T)
head(freq1,20)
freq2 = sort(colSums(m2), decreasing = T)
head(freq2,20)

findFreqTerms(tdm2,2)
palete = brewer.pal(7, "Set2")
wordcloud(names(freq1),freq=freq1,scale=c(5,0.3),
          min.freq=1,
          random.order=F,)



# ------------------------------------------------


setwd("d:/workspace/R_date/Part2/P03")
library(KoNLP)
library(wordcloud)


alert=readLines("oracle_alert_testdb.log")
head(alert, 10)
error1 = gsub(" ", "_",alert)
head(unlist(error1))
error2= unlist(error1)
error3 = Filter(function(x) {nchar(x) >= 5}, error2)
head(error2, 10)
error3 = grep("^ORA-+", error2, value=T)
head(unlist(error3),20)
write(unlist(error3),"alert_testdb2.log")
rev=read.table("alert_testdb2.log")
nrow(rev)
errorcount=table(rev)
head(sort(errorcount, decreasing = T),20)

palete = brewer.pal(9, "Set1")
wordcloud(names(errorcount),freq = errorcount, scale = c(5,0.5), rot.per = 0.25, min.freq = 3,
          random.order = F, random.color = T,colors = palete)
legend(0.3,1, "oracle Log file", cex = 0.8, fill = NA, )








