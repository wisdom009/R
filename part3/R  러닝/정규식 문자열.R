char=(c('apple','Apple','APPLE','banana','grepe'))
grep('apple',char)

char2 =c('apple','banana')
grep(char2,char)
grep(paste(char2,collapse='|'),char,value=T)
grep('pp',char)
grep('pp',char,value = T)
grep('^A',char,value = T)
grep('e$',char,value = T)

char2 =c('grepe1','apple1','apple','orange','Apple')

grep('ap',char2,value = T)

grep('[1-9]',char2,value = T)
grep('\\d',char2,value = T)

grep('[[:upper:]]',char2,value = T)
grep('[A-Z]',char2,value = T)

nchar(char) #문자 길이 카운트

paste('what','the','xxxx') #문자연결

strsplit('2014/11/22',split='/') #문자 분리

grep('-','010-4561-2378')
regexpr('-','010-4561-2378')
