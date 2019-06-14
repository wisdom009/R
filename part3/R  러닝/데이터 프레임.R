
sales$NAME  #이름만 보기
sales[1,3]  # 1행 3번째 값 보기
sales[,3]   # 3열 전체 보기
sales$PRICE # 가격만 보기
sales[1,]   #1행만 보기 
sales[c(1,2),]
sales[,c(1,2)]
sales[c(1:3)]
subset(sales,qty<5) # subset으로 검색()에 찾으려고하는 값의 이름
subset(sales,price!=500) #!느김표와 = 는 을 같이 입력하면 !=로 바뀜
subset(sales,name=='사과')

df5 = data.frame(name=c('ap','ba','ch'), price=c(300,200,100))
df6 = data.frame(name=c('ap','ch','be'),qty=c(10,20,30))
df5
df6
merge(df5,df6) 
merge(df5,df6, all = T)
rbind(df5, df6) # 원래 오류남
cbind(df5,df6)
cbind(df6,df5)

new =data.frame(name="ma",price=400)
df5 = rbind(df5, new)
df5 = rbind(df5, data.frame(name="be",price))
df5

no = c(1,2,3,4,5)
name = c("서진수","주시현","최경우","이동근","윤정웅")
address = c("서울","대전","포항","경주","경기")
tel = c(1111,2222,3333,4444,5555)
hobby = c("독서","미술","놀고먹기","먹고놀기","노는애감시하기")
member = data.frame(NO = no,NAME = name,ADDRESS = address,TEL=tel ,HOBBY=hobby)
member
member2 =subset(member,select=c(NO,NAME,TEL))
member2
member3 =subset(member,select=-TEL)
member3
colnames(member) = c("번호","이름","주소","취미")
member3

sales
ncol(sales)
nrow(sales)
names(sales)
rownames(sales)
sales[c(2,3,1),]



no = c(1,2,3,4)
name= c('apple','peach','banana','grape')
price=c(500,200,100,50)
qty=c(5,2,4,7)
#여기까지 각 이름에 값을 줬음
sales = data.frame(NO=no,NAME=name,PRICE=price,Qty=qty)
sales  #  방법 1
#-------------------------------------------------------------
sales2= matrix(c(1,'apple',500,5,
                 2,'peach',200,2,
                 3,'banana',100,4),nrow=3,byrow=T)
sales2  #방법 2

df1 = data.frame(sales2)
df1                             #방법 2 (수정 응용)
names(df1)=c('no','name','price','qty')
df1

no=c(10,20,30)
name=c('train','car','airplane')
price=(c(1000,2000,3000))
df2 = data.frame(NO=no,NAME=name,PRICE=price)
df2
df3 = cbind(df1,df2)
df3$name
df3
df4 = rbind(df2,df1)

no = c(1,2,3)
name = c('ap','ba','pea')
price=c(100,200,300)
df1 = data.frame(NO=no,NAME=name,PRICE=price)
df1
df4
setwd("d:/workspace/R_date/part3/date")

