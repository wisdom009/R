# function

?subset() # ?쓰고 함수 입력시 헬프 기능 이용가능
vec1 = c(1,2,3,4,5)
vec2=c('a','b','c','d','e') #문자는 뒤에 나오는게 숫자가 큰?
max(vec1)
min(vec1)
max(vec2)
min(vec2)
mean(vec1)
mean(vec2) # NA
sd(vec1)  #표준편차 값?
sum(vec1) # 총 합계
var(vec1) #분산값

library(googleVis)
Fruits
aggregate(Sales~Year,Fruits, sum)   #연도별 판매 항목을 계산보자 
aggregate(Sales~Year,Fruits, max)  #마찬가지로 최대값
aggregate(Sales~Year,Fruits, mean)  #평균 값 
aggregate(Sales~Fruit , Fruits, sum) # 과일별 총 판매량 합계
aggregate(Sales~Fruit+Year,Fruits, max) #과일별 년도 판매량

mat1 = matrix(c(1,2,3,4,5,6),nrow = 2,byrow = T)
mat1
apply(mat1, 1, sum) # 각 행의 합계 구하기
apply(mat1, 2, sum) # 각 열의 합계 구하기
apply(mat1, 1, prod) # 각 행의  곱셈
apply(mat1[,c(2,3)],2, max) # 1열을 제거 2,3열 최대값 구하기
mat1[,c(2,3)]
mat1

list1 = list(Fruits$Sales) #판매량만 출력
list2 = list(Fruits$Profit) #이윤만 출력
list1 
list2 

lapply(c(list1,list2),max) # list 1,2 에서 최고값만 출력
sapply(c(list1,list2),max) # lapply와 달리 sapply는 연속해서 출력


lapply(Fruits[,c(4,5)],max)
sapply(Fruits[,c(4,5)],max)

tapply(Sales,Fruit,sum) # 
attach(Fruits)
tapply(Sales,Fruit,sum)
tapply(Sales,Year,sum)
vec1 =c(1:5)
vec2 = seq(10,50,10)
vec3 = c(100,200,300,400,500)
mapply(sum, vec1,vec2,vec3) 

data1 = read.csv("data1.csv")
data

tapply(data,2,sum)                
attach(data)
tapply(data$X2000년,data$X2001년, sum)

apply(data1[,c(2:15)],2,sum) # c ()칼럼(~부터~까지2에서15까지)2번째 행 합
apply(data1[,-1],1,sum)     #항목의 칼럼([,c()]) 합계산
data2 = read.csv("1-4호선승하차승객수.csv")
attach(data2)
tapply(승차,노선번호,sum)
data2
tapply(하차,노선번호,sum)  #한가지 목록 합계산

sapply(data2[,c(3:4)],sum )
aggregate(승차+하차~노선번호,data2,sum)  #여러가지 목록 나열 값계산
aggregate(승차~노선번호,data, sum)  
aggregate(하차~노선번호,data, sum)

