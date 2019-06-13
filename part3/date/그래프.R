var1=1:5
plot(var1)
abline(h=8)
rect(1,6,3,8)
arrows(5,5,3,3)
segments(2,2,3,3)
text(2,4,'label')
text(3,2,"test",srt=45) # srt기울기
View(iris)
mi=data.frame(iris,s=iris$Sepal.Length, s=iris$Sepal.Width)
mi=data.frame(iris,s=iris$Sepal.Length)
mi
par(mfrow=c(1,6))
plot(mi,type="l",col="blue")
plot(mi2)
plot(mi1) #iris$Sepal.Length ,iris$Sepal.Width 
plot(mi2) #iris$Petal.Length,iris$Petal.Width
plot(mi3) #iris$Sepal.Length,iris$Petal.Length
plot(mi4) #iris$Sepal.Width,iris$Petal.Width
barplot(mi2)

par(new=T)
a=(iris$Species)
mi6=tapply(iris$Sepal.Width,iris$Species ,mean)

plot(mi6)#(iris$Sepal.Width,iris$Species
plot(mi5) #iris$Sepal.Length,iris$Species


plot(a)
plot(mi1,col="red",ylim=c(1,7)) # iris$
par(new=T)
plot(mi2,col="blue",ylim=c(1,7))
par(new=T)
plot(mi3,col="black",ylim=c(1,7))
par(new=T)
plot(mi4,col="green",ylim=c(1,7))
a=aggregate(Sepal.Width ~ Species, iris, mean)
list1 = list(Fruits$Sales) #판매량만 출력
list2 = list(Fruits$Profit) #이윤만 출력
list1 
list2 

lapply(c(list1,list2),max) # list 1,2 에서 최고값만 출력
sapply(c(list1,list2),max)
plot(iris,Petal.Length, ~Petal.Width, fill = ~Species)
avg(iris$Sepal.Length)
x1=iris(x, iris$Sepal.Length,iris$Sepal.Width , sum)
x=iris
x
par(mfrow=c(1,4))
barplot(tapply(iris$Sepal.Width, iris$Species, col=rainbow(length(a1)),mean)) #sw
barplot(tapply(iris$Sepal.Length , iris$Species, mean)) #sl
barplot(tapply(iris$Petal.Length, iris$Species, mean)) #pl
barplot(tapply(iris$Petal.Width, iris$Species, mean)) #pw
a1=tapply(iris$Sepal.Length , iris$Species, mean)


is=filter(iris, Species == 'setosa')
iv=filter(iris, Species == 'versicolor')
iv2=filter(iris, Species ==  'virginica')

