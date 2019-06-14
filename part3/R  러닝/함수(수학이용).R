mat1=matrix(c(1:6),nrow = 2,byrow=T)
mat1

a = rep(1,3)
a
sweep(mat1,2,a) # mat1 의 각 행에 1씩 빼준다 
b = matrix(c(2,2)) # 2가 기본칼럼 1개의 칼럼에 2씩 지정
b
sweep(mat1,1,b)

a = c(1,2,3,4,5)
length(mat1)
library(googleVis)
length(Fruits)
log(10) 
sin(pi)
abs(-1) #절대값
abs()
v2 =c(1,2,3,4)
abs(v2)

ceiling(2.3) # 정수
floor(2.3)  #
ceiling(-2.3)
floor(-2.3) 
round(2.5)
round(2.51) #반올림
choose(5,3)

mf = function() {
  return(10)
}

mf()

mf1 = function(x) {
  y = x * x
  return(y)
}
mf1(-3)

mk1 =function(x,z) {
  y = x - z
  return(y)
}
mk1(3,2)
mk1(2,3)

mk2 =function(x,z) {
  y = abs(mk1(x,z)) #절대값 설정을  해주고 시작...
  return(y)
}
mk2(300,200)  # mk1에 의거하여 남은 값을 절대값으러 설정 - 는 절대값에 의해 음수가 양수로  
am = matrix(c(1:8),nrow=2,byrow=T)
am
am = cbind(am,c(9:10))
am = rbind(am,c(11:15))
library(googleVis)
Fruits
sort1=Fruits$Sales
sort1
sort(srot1)
sort(srot1,decreasing = T) # 숫자의 순서를 역순으로 나열
install.packages("plyr")
library(plyr)

setwd("d:/workspace/R_date/part3/date/실습용_데이터")
fruits = read.csv("fruits_10.csv",header = T)
fruits
ddply(fruits,'name',summarise,sum_qty=sum(qty),sum_price=sum(price))
ddply(fruits,'name',summarise,max_qty=max(qty),min_price=min(price))
ddply(fruits, c('year', 'name'),summarise,max_qty=max(qty),min_price=min(price))
#연도별 이름별 각각 최대외 최소치 검색

ddply(fruits,'name',transform,sum_qty=sum(qty), pct_qty=(100*qty)/sum(qty)) # 과일 판매 

install.packages("dplyr")
library(dplyr)
data1 = read.csv("2013년_프로야구선수_성적.csv")
data1
data2 = filter(data1,경기 > 120) # 120보다 큰 숫자로 나열
data2

filter(data1, 경기 > 120 &득점>80)

filter(data1, 포지션 == '1루수' | 포지션 =='3루수')  # | 는 or 와 같은 식
filter(data1, 포지션 %in% c('1루수','3루수')) #포지션 == '1루수' | 포지션 =='3루수' 와 같음  

select(data1, 선수명, 포지션, 팀)
select(data1, 순위:타수)       
select(data1, -홈런, -타점, -도루)  # 선택한 자료를 제외하고 출력
select(data1, -홈런, -도루 )

data1 %>%   #여러 문장을 조합하여 만드는 기법
  select(선수명,팀,경기,타수) %>%
  filter(타수 > 400)  
# 선수 팀 경기 타수 에서 타수 400 이상만 출력

data1 %>%   #여러 문장을 조합하여 만드는 기법
  select(선수명,팀,경기,타수) %>%
  filter(타수 > 400) %>%
  arrange(타수)  #타수가 많은순으로 정렬


data1 %>%   #여러 문장을 조합하여 만드는 기법
  select(선수명,팀,경기,타수) %>%
  filter(경기 > 120) %>%
  arrange(desc(타수), desc(타수)) 


data1 %>%   #여러 문장을 조합하여 만드는 기법
  select(선수명,팀,경기,타수) %>%
  mutate(경기x타수 =경기*타수) %>%
  arrange(경기x타수)  #타수가 많은순으로 정렬

data1 %>%   #여러 문장을 조합하여 만드는 기법
  select(선수명,팀,출루율, 장타율) %>%
  mutate(ops = 출루율 + 장타율) %>%  # 출루와 장타를 석어서 새로운 항목(출,장,ops)만 출력
  arrange(desc(ops))  # 큰순으로 정렬

data1 %>%
  group_by(팀) %>%
  summarise(average = mean(경기,na.rm =  T )) #평균 경기를 팀으로 묶어 칼럼으로 출력

data1 %>%
  group_by(팀) %>%
  summarise_each(funs(mean), 경기, 타수,타율)

data1 %>%
  group_by(팀) %>%
  summarise_each(funs(mean,n()),경기,타수 )
attach(Fruits)
Fruits
filter(Fruits, Expenses > 80)
filter(Fruits, Expenses > 90 | Sales > 90)
filter(Fruits, Expenses > 90 | Sales <80)
filter(Fruits, Expenses == 79 | Expenses == 91 )
select(Fruits, Fruit:Sales , -Location )
Fruits %>%
  group_by(Fruit) %>%
  summarise(arrange = sum(Sales,na.rm =  T ))
Fruits %>%
  group_by(Fruit) %>%
  summarise(average=sum(Sales,na.rm = T))


                 
install.packages("ggplot2")
library(ggplot2)
mpg
                 
                 
View(mpg)

mpg %>%
  group_by(manufacturer) %>%
  select(manufacturer,displ,hwy) %>%
  filter(displ > 4 | displ < 5) %>% 
  arrange(desc(hwy))


mpg %>%
  group_by(manufacturer) %>%
  filter(manufacturer %in% c('audi','toyota')) %>%
  summarise(arrange = sum(cty,na.rm =  T ))

mpg %>%
  group_by(manufacturer) %>%
  filter(manufacturer %in% c('chevrolet','ford','honda')) %>%
  summarise_each(funs(mean),hwy)

mpg %>%
  select(class,cty)

mpg %>%
  group_by(class) %>%
  select(cty,class) %>%
  filter(class %in% c('suv','compact')) %>%
  summarise_each(funs(mean),cty)

mpg %>%
  group_by(manufacturer) %>%
  select(model,hwy) %>%
  filter(manufacturer %in% c('audi')) %>%
  arrange(desc(hwy))

mpg %>%
  group_by(manufacturer) %>%
  select(manufacturer,cty,hwy) %>%
  mutate(cty_hwy = cty + hwy) %>%
  mutate(ch = cty_hwy / 2) %>%
  arrange(desc(ch))

mpg %>%
  group_by(manufacturer) %>%
  select(manufacturer,cty,class) %>%
  summarise_each(funs(mean),cty)

mpg %>%
  group_by(manufacturer) %>%
  select(manufacturer,cty,class) %>%
  summarise_each(funs(mean),cty) %>%
  arrange(desc(cty))

mpg %>%
  group_by(manufacturer) %>%
  select(manufacturer,hwy) %>%
  summarise_each(funs(mean),hwy) %>%
  arrange(desc(hwy))

mpg %>%
  group_by(manufacturer) %>%
  select(manufacturer,class) %>%
  filter(class %in% c('compact')) %>%
  summarise_each(funs(n()))

                 