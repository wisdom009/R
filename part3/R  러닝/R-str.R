install.packages("reshape2")
library(reshape2)
fruits
install.packages("stringr")
library(stringr)
fruits = c('apple','Apple','banana','pineapple')
fruits
str_detect(fruits,'A')
str_detect(fruits,'a')
str_detect(fruits,'^a') # ^는 단어의 끝을 의미 $는 끝을 의미함
str_detect(fruits,'e$')
str_detect(fruits,'^[aA]') # 단어에 []의 주면 a또는A 
str_detect(fruits,'[aA]')


str_detect(fruits,regex('a',ignore_case=T))
str_count(fruits,'a') # count로 문자를 짖ㅇ해주고 그 문자가 들어간 숫자를 카운팅           
fruits           
str_c("apple","banana")
str_c("fruits: ",fruits)           
str_c(fruits," name is ",fruits," ppap ") #여녹적으로 지정된 문자에 문자나 문장을 정해 줄 수 있음           
str_c(fruits,collapse = " ")  #"apple Apple banana pineapple"
str_dup(fruits,3)
str_length('apple')
str_length('과일')
str_length('fruits')
str_locate('apple','a')
str_locate('apple','app')
str_locate(fruits,'a')

str_replace('apple','p','*') #애플의 p를 *로 수정
str_replace('apple','p','++')
str_replace_all('apple','p','*') 

fruits=str_c('apple','/','orange','/','banana') 
fruits
str_split(fruits, "/")  # [[]] 두개가 같이 있으면 리스트형식

str_sub(fruits,start=1, end=3)
str_sub(fruits,start=6, end=9)
str_sub(fruits,start=1)
str_sub(fruits,start=-6)
str_trim(' apple banana berry')
str_trim('\t apple banana berry \n apple banana berry'')
 
#----------------------------------------------------------------------------------------------------
      str--- 데이터에 주어진 특정 문자를 카운팅 또는 확인이 가능한 함수








