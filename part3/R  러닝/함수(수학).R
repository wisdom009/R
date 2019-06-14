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
