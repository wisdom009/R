setwd("d:/workspace/R_date/part3/date")

print(5/2)  #나누기
print(5%/%2)  #정수 나누기
print(5%%3)  # 나머지 주하기
print(3^2)
print(100000000000) # 1e + 11 (0의 개수)
1 /1000
1 / 10000  #1e - 04 ( - 는 0.1 즉 소수점단위의 0을 말한다)
'1' + '2'
as.numeric('1') + as.numeric('2')
'first'
"second"
first <- 1
first
second = 2
second
class(1)
class('1')
class(!1)
3 & 1
3 & 0
3 | 0
!3
!0
cat(1,NA,2)
cat(1,NULL,2)
sum(1,NA,2)
sum(1,NULL,2)
sum(1,NA,2,na.rm=T)  # an.rm은 na를 리무브 즉 제거함

setwd("d:/workspace/R_date/part3/date")
txt1 <- read.csv("factor_test.txt")
factor1 <- factor(txt1$blood)
factor1
factor1 <- factor(txt1$sex)

Sys.Date()
Sys.time() 
date()
class(as.Date("2019-05-30"))
as.Date("2019/05/30")
class(as.Date("2019-05-30"))
as.Date("01-11-2014",format="%d-%m-%Y")
as.Date("190530",format="%y%m%d")

    # %d 숫자 인식 Y대문자는 4자릿수 연도 y소문자는2자릿수 

as.Date(20,origin="2019-05-30") # "" 사이는 문자열이 들어가야 성립
as.Date("2019-05-30") - as.Date("2019-05-27")
as.Date("2019-11-14") - Sys.Date()
as.Date("2014-11-15") + 5
as.POSIXct("2014-11-01 20:00:00") - as.POSIXct("2014-11-01 18:30:30")
0.491667* 60
0.50002 * 60

install.packages("lubridate")
library(lubridate)
now()
date <- now()
date
date <- date -days(2); date
month(date) <- 2; date
date +years(1)
date+months(3)
date <- hm("22:30") ; date
date <- hms("22:30:50") ; date
