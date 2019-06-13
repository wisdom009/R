vec1 <- c(1,2,3,4,5)
vec1[1:2]
length(vec1)
vec1[1:(length(vec1)-2)]
vec1[2] <-6; vec1
vec1 <- c(vec1,7)
vec1
vec1[9] <- 9
vec1
vec1[7] <- 8;vec1
vec1
vec1[8] <- 9; vec1
vec1
vec1[9] <- 10; vec1 #9번째 자리에 10을 입력
vec1
vec1 <- append(vec1,10,after=3)  # 3번째 자리 뒤에 10을 입력
vec1
append(vec1,100,after = 0) # vec1의 0번째 자리에 100을 추가한다


c(1,2,3)
c(1,2,3) + c(4,5,6)
c(1,2,3) +1
var2<-c(4,5,6)
var1<-c(1,2,3)
var1 + var2
var3<-c("3","4","5")
var3
var4 <-c(1,2,3,4,5)
fruits= c(10,20,20)
fruits
names(fruits) = c('apple','banana','mango')
fruits
ver5 = seq(1:6)
ver5
ver6 = seq(2,-2)
ver6
odd = seq(1,10,2)
odd
odd2 = rep(1:3,2) #반복문 rep ,2는 몇번 전체 몇번 반복하는지
odd2
odd3 = rep(1:3,each=2) # 반복문 rep + each는 각각 몇번 반복하는지
odd3    
