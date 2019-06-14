setwd("D:/workspace/R_date/part4")
var1=1:5
plot(var1)
var1=5:1
plot(var1)
var2=c(2,2,2)
plot(var2)
x=1:3
y=4:2
plot(x,y)
plot(x,y,xlim=c(0,5),ylim=c(0,5))
plot(x,y,xlim=c(0,5),ylim=c(0,5),
     xlab = "x축값", ylab = "y축값", mian = "Plot test")


v1= c(100,130,120,160,150)
plot(v1,type='o',col='red',ylim=c(50,200),axes=F,ann=F)
axis(1,at=1:5,lab = c('mon','tue','wed','thu','fri'))
axis(2,ylim=c(50,200))
title(main="FEUIT",col.main="red",font.main=4)
title(xlab="DAY",col.main="black")
title(ylab="FRICE",col.main="blue")
# 하나씩 짜집기


v2=c(100,130,120,160,150)
par(mfrow=c(1,3))
plot(v2,type="o")
plot(v2,type="s")
plot(v2,type="l")
pie(v2)
barplot(v2)


par(mfrow = c(1,1))
a = c(1,2,3)
plot(a, xlab = "aaa")
par(mgp =c(0,1,0))
par(mgp =c(3,1,0))
par(mgp =c(3,2,0))
par(oma =c(2,1,0,0))
par(oma =c(0,2,0,0))
#??????????????????????????????????

par(mgp =c(3,1,0))
v1=c(1,2,3,4,5)
v2=c(5,4,3,2,1)
v3=c(3,4,5,6,7)
plot(v1, type = "s",col="red",ylim = c(1,7))
par(new=T)
plot(v2, type = "o",col="blue",ylim = c(1,7))
par(new=T)

plot(v3, type = "l",col="green",ylim=c(1,7))
legend(3,7,c("v1","v2","v3"),cex=0.9,col=c("red","blue","green"),lty=1)


x=c(1,2,3,4,5)
barplot(x)

par(mfrow=c(1,2))
barplot(x)
barplot(x,horiz = T)

x=matrix(c(5,4,3,2),2,2)
x
x=matrix(c(5,4,3,2),nrow = 2)
barplot(x)  # 5+4/ 3+2 
barplot(x, beside = T, names=c(5,3),col=c("green","gold"))
barplot(x, beside = T, names=c(5,3),col=c("green","gold"),horiz = T)
par(oma=c(1, 0.5, 1, 0.5)) # 하 좌 상 우 / # 그래프가 나오기 전에 적용해야 효과 있음

barplot(x, beside = T, names=c(5,3),col=c("green","gold"),horiz = T, xlim=(0,10))

par(oma=c(0, 0, 0, 0))
v1=c(100,120,140,160,150)
v2=c(120,130,150,140,170)
v3=c(140,170,120,110,160)
qty =data.frame(BANANA=v1,CHERRY=v2,ORANGE=v3)
qty
barplot(as.matrix(qty),main="Fruit\'s Sales QTY" , beside = T,col=rainbow(nrow(qty)), ylim=c(0,400))
barplot(t(qty),main="Fruit\'s Sales QTY" , ylim=c(0,900),col=rainbow(qty),space=0.1,cex.axis = 0.8 las=1,
        names.arg = c("mon","tue","wed","thu","fri"),cex=0.8)

legend(14,400,c("mon","tue","wed","thu","fri"),cex=0.8,fill=rainbow(nrow(qty))) # 

peach=c(180,200,250,198,170)
color = c()
for (i in 1:length(peach)) {
  if (peach[i] >= 200)
    color = c(color, "red")
  else if (peach[i] >= 180)
    {colors=c(colors,"yellow")}
  else
  {colors=c(colors,"green")}
}


barplot(peach,main = "Peach Sales QTY" , names.arg = c("mon","tue","wed","thu","fri"),col=colors)


height=c(182,175,167,172,163,178,181,166,159,155)
par(mfrow=c(1,2))
barplot(height)
hist(height)

par(mfrow=c(1,1))
p1 = c(10,20,30,40) 
pie(p1, radius = 1)
pie(p1, radius = 1,init.angle = 90) #90도 회전
pie(p1, radius = 1,init.angle = 90,col = rainbow(length(p1)))
pie(p1, radius = 1,init.angle = 90,col = rainbow(length(p1)),labels=c("w1","w2","w3","w4"))
pct=round(p1/sum(p1)*100,1)
lab=paste(pct, "%")

pie(p1, radius = 1,init.angle = 90,col = rainbow(length(p1)),labels = lab)
legend(0.8, 1.08,c("w1","w2","w3","w4"),cex=0.8,fill = rainbow(length(p1)))


lab1 = c("w1","w2","w3","w4")
lab2 = paste(lab1,"\n",pct,"%")
pie(p1, radius = 1, init.angle = 90, rainbow(length(p1)),label=lab2)

install.packages('plotrix')

f_day = round(p1/sum(p1)*100,1)
f_label = paste((f_day,"%"))
pie3D(p1,main="3D",col=rainbow(p1),cex=05,labels=f_label,explode=0.05)



v1=c(10,12,15,11,20)
v2=c(5,7,15,8,9)
v3=c(11,20,15,18,13)
boxplot(v1,v2,v3)  #v2 - 15가 이상치(아웃라인)
boxplot(v1,v2,v3, col=c("blue","gold","pink"),
        names = c("blue","gold","pink"),horizontal = T)

