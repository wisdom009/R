#                   == 같다
#                   != 다르다 (! + = 는 !=)
#                   >= 크거나 같다 <= 작거나 같다  ( <,>와 = 는 <=,>=로 바뀜)

myabs =function(x) {
  if (x >= 0) {
    return(x)
  } else {
    return(-x)) # x가 0보다 크면 그냥 보내고 작으면 -x 로 +로 만들어서 출력 
  }
}
myabs(-3.2)
myabs(4.5)

ma1= function(x) {
  if (x>0) {
    return(x*x)
  } else {
    return(0) 
  }
} 

ma1(4.6)
ma1(-2.6)

ma2=function(x){
  if (x>0) {
    return(2*x)
  } else if (x == 0) {
    return(0) 
  } else {
    return(-2*x)
  }
}

ma2(4.6)
ma2(0)
ma2(-2.4)

#ifelse 1이 참이면 b 출력 거짓이면 c  출력
number=scan()
10
result = ifelse(number%%2 == 0, '짝','홀')
result

myf1= function(x) {
  if (x>5) {
    return(1)
  } else {
    return(0)}
} # 1
myf1(6)
myf1(2)

myf2=function(x) {
  if (x>0) {
    return(1)
  } else {
    return(0)
  } # 2
}
myf2(-1)
myf2(1)

myf3= function(z,x) {
  if (z>x){
    return(z-x)
  } else 
  { return(x-z)
  }
}

myf3(9,2)
myf3(2,10)

my=scan()


myf4=function(x) {
  if (x<=0) {
    return(0)
  } else if(x>=1 &x<=5 ) { 
    return(1)
  } else { 
    return(10)
  }
}

myf4(0)
myf4(5)
myf4(6)

myf5=function(input){
  if (input =='y'||input =='Y') {
    return('yes')
  } else { 
    return('not yes')
  }
}  #5     funs에 x 대신 input값을 주고 시작



ma3=scan()
ifelse(Y == y, 'yes','not yes')
ma1
myf5(ans)

ans = scan(what = " ")

mr=function(a,b,c) {
  D= b*b - 4*a*c
  if (abs(D) < 1e-5) {
    return(1)
  } else if (D > 0) {
    return(2)
  } else {
    return(0)
  }
}
a=1.00000000001
b=2.00000000001
c=1.00000000002

mr(a,b,c)
