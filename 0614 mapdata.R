install.packages('ggiraphExtra')
install.packages('maps')
install.packages('mapproj')
install.packages('grid.arrange')
library(grid.arrange)
library(ggiraphExtra)
library(mapproj)
library(maps)
library(ggplot2)
library(dplyr)
library(reshape2)
library(extrafont)
library(tibble)

windowsFonts(malgun= "맑은 고딕")
theme_update(text = element_text(family = "malgun"))

# 데이터 정보보기 4종 세트
str(USArrests)
head(USArrests)
tail(USArrests)
summary(USArrests)

#미국 주 지도 데이터 준비
crime = rownames_to_column(USArrests, var = "state")
head(crime)
crime$state = tolower(crime$state)

#단계 구분도 만들기
states_map = map_data("state")
str(states_map)


# 인터랙티브 단계 구분도
ggChoropleth(data = crime,         # 지도에 표현할 데이터
             aes(fill = Murder,    # 샐깔로 표현할 변수
                 map_id = state),  # 지역 기준 변수
             map = states_map)     # 지도 데이터 

ggChoropleth(data = crime,
             aes(fill = Rape,
                 map_id = state),
             map = states_map)


ggChoropleth(data = crime,
             aes(fill= UrbanPop,
                 map_id = state),
             map = states_map)

ggChoropleth(data = crime,
             aes(fill= Assault,
                 map_id = state),
             map = states_map)


# ---- 만든 그래프 한번에 모아보기

windows()
m =ggChoropleth(data = crime,         # 지도에 표현할 데이터
             aes(fill = Murder,    # 샐깔로 표현할 변수
                 map_id = state),  # 지역 기준 변수
             map = states_map)     # 지도 데이터 

r=ggChoropleth(data = crime,
             aes(fill = Rape,
                 map_id = state),
             map = states_map)


u=ggChoropleth(data = crime,
             aes(fill= UrbanPop,
                 map_id = state),
             map = states_map)

a=ggChoropleth(data = crime,
             aes(fill= Assault,
                 map_id = state),
             map = states_map)+
  ggtitle("미국~~")+
  xlab("경도")+
  ylab('위도')+
  theme(plot,title = element_text(face =  "bold", hjust = 0.5 , size = 15, color = ))
  
windows()
grid.arrange(m,r,u,a, ncol =2 ,
             top = '미국 범죄율')

# 우리나라 데이터

install.packages('stringi')
install.packages('devtools')
devtools::install_github("cardiomoon/kormaps2014")
# devtools::는 패키지 이름임
library(kormaps2014)

korpop1
korpop1 = rename(korpop1,
            pop = 총인구_명,
            name = 행정구역별_읍면동)


ggChoropleth(data = korpop1,
             aes(fill= pop,
                 map_id=code,
                 tooltip= name), 
             map = kormap1,
             interactive = T) # 인터랙티브

ggChoropleth(data = tbc,
              aes(fill = NewPts,
                  map_id = code,
                  tooltip = name), 
              map = kormap1,
              interactive = T) # 인터랙티브



