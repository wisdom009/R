
mtcars

str(mtcars) # 정보 간소화

ggplot(mtcars,aes(x=hp, y=mpg)) +
  geom_point()

ggplot(mtcars,aes(x=hp, y=disp)) +
  geom_point()

ggplot(mtcars,aes(x=hp, y=mpg)) +
  geom_point(color="red") +
  geom_line()

ggplot(kor,aes(x=이름,y=점수)) + geom_point()

sort=arrange(score,이름,과목)
sort
sort2 = sort %>%  
  group_by(이름)

mpg %>%
  group_by(class) %>%
  select(cty,class) %>%
  filter(class %in% c('suv','compact')) %>%
  summarise_each(funs(mean),cty)

View(mpg)

# -1-
ggplot(mpg, aes(x=cty, y=hwy)) + geom_point()

# -2-
ggplot(midwest, aes(x=poptotal, y=popasian)) + geom_point()

mw

# -3-
mpg3=mpg %>%
  filter(class =='suv') %>%
  group_by(manufacturer) %>%
  summarise(mean_cty) %>%
  arrange(desc(class))
mpg3

#-4-
mpg1=mpg %>%
  group_by(model) %>%
  select(model,class) %>%
  filter(class %in% c('suv')) %>%
  summarise_each(funs(n())) %>%
  arrange(desc(class))
mpg1  
ggplot(mpg1,aes(x=model, y=class)) + 
  geom_bar(stat = "identity") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1,vjust = 1,colour = "black",size = 10)) +

#---5--
economics

ggplot(economics, aes(x=date, y=psavert))+
  geom_line() 


# --6--
mpg
mpg2 = mpg %>%
  group_by(class) %>%
  select(cty,class) %>%
  filter(class %in% c('compact','subcompact','suv'))

mpg2
ggplot(mpg2, aes(x = class, y = cty)) + geom_boxplot(fill=c("blue","green","red")) +


  

#--7-1-

str(diamonds)
돗수가 몇개인지
d1=diamonds %>%
  group_by(cut) %>%
  filter(cut, %iin% c('Fair','Good','Very Good','Premium','ideal')) %>%
  summarise_each(list(mean),Fair,Good,Very Good,Premium,ideal)


#----
ggplot(diamonds, aes(x=cut, fill=cut)) +
  geom_bar()  # 정답

#--7-2-
ggplot(diamonds, aes(x=cut, y=price)) + 
  geom_bar(stat = "identity",fill="blue") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1,vjust = 1,colour = "black",size = 10),
        axis.text.y = element_text(angle = 30, hjust = 1,vjust = 1,size = 10))


# ---
dd= diamonds %>%
  group_by(cut) %>%
  summarise(mean_price = mean(price))
  
ggplot(dd, aes(x=cut, y=mean_price, fill=cut)) +
  geom_col() # 정답

#(ggplot(diamonds, aes(x=cut, fill=cut)) + geom_bar()  (7-1번답) 간소화 가능)

#--7-3-
dd1=diamonds%>%
  group_by(color) %>%
  
  select(cut, color, price) %>%
  filter(cut,color)
  summarise(mean_price = mean(price))

  

ggplot(diamonds, aes(x=price)) +
  goem_histogram(bins=10) +
  facet_wrap(cut) # 간단하게
