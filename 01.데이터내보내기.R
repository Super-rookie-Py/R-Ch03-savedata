### 강의노트
### 2020/04/25 keonwoo park
### 03 데이터 내보내기(기술통계분석-범주형)





#csv 파일 가져오기
gradecsv <- read.csv("grade_2.csv", 
                     header=T,
                     na.strings = "."
)
str(gradecsv)


# 숫자를 팩터 요소로 바꿔줌
gradecsv$csex <- factor(gradecsv$csex ,
                      levels = c(1,2),
                      labels = c("남자", "여자")
)
str(gradecsv)


#변수 이름 바꾸기 
install.packages("reshape")
library(reshape)
gradecsv <- rename(gradecsv, 
                   c(癤퓁d = "id"))#깨져있는글자..




# 작업 후에 데이터 내보내기  , 숫자1을 남자로 바꿔줌(factor요소)

write.csv(gradecsv,
          file = "gradecsv.csv",
          row.names = FALSE,
          na = "")

# R 데이터로 저장

save(gradecsv, file = "grade.Rdata") #데이터값만보내기

load(file="grade.RData")     #데이터값만 읽어내기



