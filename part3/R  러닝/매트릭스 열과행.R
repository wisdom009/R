mat1 = matrix(c(1,2,3,4))
mat1

mat2 = matrix(c(1,2,3,4),nrow=2) 
mat2

mat3=matrix(c(1,2,3,4),nrow=2,byrow = T)
mat3[1,1]
mat3[1,]
mat3[,1]

mat4 = matrix(seq(1:9),nrow=3,byrow=T)
mat4 = rbind(mat4, c(10,11,12)) #아래 한줄 추가
mat4 = cbind(mat4, c(13,14,15,16)) # 옆으로 한줄 추가
mat4             

mat5 = matrix(c('a','b','c','d'),nrow=2,byrow=T)
mat5 = cbind(mat5,c('e','f'))
colnames (mat5) = c('first','second','third')
mat5

q = matrix(c("봄","여름","가을","겨울"),nrow=2,byrow=T)
q = rbind(q, c('초봄','초가을'))
q = cbind(q, c('초여름','초가을','한겨울'))
q

a = array(c(1:12), dim=c(4,3))
a
a = array(c(1:12), dim=c(4,3), byrow=T) # byrow 사용 못함

a1 = array(c(1:12), dim=c(2,2,3))  
#2열2행으로 3번 반복 단1~12는 순서대로 1번에 4까지 2번째에 8까지
a1

a1[1,1,3]
a1[1,,] # 각 층 1행만 출력

list1= list(name='고길동',address='검정고무신',tel = '010-1234-5678',
            age = 10)
list1$birth = '1719-10-23' # 항목 추가
list1$name = c('슈퍼맨','배트맨') # 항목 수정 
list1$address = c('TV') 
list1$birth= NULL #항목 삭제
list1

