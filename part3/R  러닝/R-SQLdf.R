install.packages("sqldf")
library(sqldf)  #에디터 프레임에 sql적용
library(googleVis)
Fruits
sqldf('SELECT * FROM Fruits')
sqldf('SELECT * FROM Fruits limit 3,5 ')
sqldf('SELECT * FROM Fruits limit 3')  #limit 0,3
sqldf('SELECT * FROM Fruits order by year desc') #내림차순
sqldf('SELECT * FROM Fruits order by year') #기본순서 오름차순

sqldf('SELECT * FROM Fruits WHERE Fruit=\'Apples\'')
sqldf("SELECT * FROM Fruits WHERE Fruit= 'Apples'")

sqldf('SELECT Fruit, sum(Sales) FROM Fruits group by Fruit')
#----- 선택 : 과일, 합(판매량)  from (차트)그룹 과일 

sqldf('SELECT Fruit, sum(Sales), sum(Expenses), sum(Profit) FROM Fruits group by Fruit')
sqldf('SELECT Year, avg(Sales), avg(Expenses), avg(Profit) FROM Fruits group by Year')
sqldf('SELECT Year, avg(Sales), avg(Expenses), avg(Profit) FROM Fruits group by Year order by avg(Profit) desc ') 
#   끝에 order by avg(Profit) desc  만 붙이면 끔
sqldf('select max(sales), min(Sales) FROM Fruits ')


sqldf('select Fruit, max(sales), min(Sales) FROM Fruits ') # 과일이름 출력

sqldf('SELECT * FROM Fruits WHERE Sales = (select min(sales) from Fruits)')
sqldf('SELECT * FROM Fruits WHERE Sales = 81')
sqldf('SELECT * FROM Fruits WHERE Expenses = (select max(Expenses) from Fruits)') # 단일 출력이 가능 
                    # 가격 = (선택 최대(값)출력)
sqldf('SELECT * FROM Fruits WHERE sales IN (select max(sales) mix(sales) from Fruits)') # na   ()안에 2가지 함수 불가

song = read.csv("song.csv",header = F,fileEncoding = 'utf8') #1.해더가 없을시 F로  2. 파일이 깨지면 fileEncoding = 'utf8'로 읽을 수 있도록 변경
song
# 방법1  #label = c('_id','tile','lyrice','girl_group_id')  # label 에서 이름 지정해줌
#colnames(song) = label  # colnames(컬럼이름)(파일명) = laebl과 동일
names(song) = c('_id','title','lyrice','girl_group_id') #밥법2 간단하게 이름(파일)=지정 끝...

girl = read.csv("girl_group.csv",fileEncoding = 'utf8',header = F)
names(girl)=c('_id','name','debut')
girl

sqldf("SELECT gg._id, gg.name, gg.debut, s.title
      FROM girl as gg 
      INNER JOIN song as s
      ON gg._id =s.girl_group_id ") # 1   as 이용

sqldf("SELECT gg._id, gg.name, gg.debut, s.title
      FROM girl gg 
      INNER JOIN song s
      ON gg._id =s.girl_group_id ") #2 as 생략
sqldf(c('UPDATE Fruits SET Profit = 50 WHERE Fruit = \'Apples\' AND Year =2008',
      'SELECT * FROM Fruits'))

