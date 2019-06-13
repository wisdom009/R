no = 0
while (no <5) {
  print(no)
  no = no+1
}

x =1
while (x<5) {
  x= x+1
  if(x==4)
    break
  print(x)
}

colors=c()
for (i in 1:length(my_ray4)) {
  if(my_ray4[i] >=10) {
    colors = c(colors,"red") }
  else if (my_ray4[i] >= 6){
    colors = c(colors,"yellow") }
  else {
    colors = c(colors,"green") }
}

a1= function(x){
  for (j in 1:x) {
    i = i + j
  }
    print(i)
}

a1(50)

for (i in 1:9) {
    for(j in 1:9){
    print(i*j)
  }
}

getDenominator= function(x) {
  den = c(1)
  if (x >=2) {
    for (i in 2:x) {
      if (x %%i ==0)
        den=c(den,i)
    }
  }
  return(den)
}
getDenominator(100)


#1. 구구단

for (i in 2:9) {
  line <- str_c(i, '단')
  print(line)
  for (k in 1:9) {
    line <- str_c(i, ' * ', k, ' = ', i*k)
    print(line)
  }
}

#2. Diamond 그리기
while(T) {
  for (i in 1:4) {
    line = ''
    if (i != 4) {
      for (k in 1:(3 - (i - 1)))
        line = str_c(line, ' ')
    }
    for (k in 1:(2*i - 1))
      line = str_c(line, '#')
    print(line)
  }
  for (i in 3:1) {
    line= ''
    for (k in 1:(3 - (i - 1)))
      line = str_c(line, ' ')
    for (k in 1:(2*i - 1))
      line = str_c(line, '#')
    print(line)
  }
  break;
}

# 1:5:2(파이썬식) =>  seq(1,5,2)(R식)

sum=0
for (i in seq (3,100,3)) {
  sum =  sum + i
}
print(sum)

for (i in seq(1,0,1)) {
  print(i)
}


























