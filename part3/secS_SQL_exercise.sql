﻿# 1) 2009년도에 데뷔한 걸그룹 정보를 조회
use ezen;
SELECT * FROM girl_group
  WHERE debut BETWEEN '2009-01-01' AND '2009-12-31';

# 2) 2009년도에 데뷔한 걸그룹의 히트송은? 
SELECT gg.NAME AS '걸그룹이름', gg.debut AS '데뷔일', s.title AS '제목'
  FROM girl_group AS gg 
  INNER JOIN song AS s
  ON gg._id = s.girl_group_id 
  WHERE debut BETWEEN '2009-01-01' AND '2009-12-31';

# 3) 대륙별로 국가숫자, GNP의 합, 평균 국가별 GNP는?
use world;
SELECT Continent, COUNT(*), SUM(gnp), AVG(gnp)
  FROM country GROUP BY Continent;

# 4) 아시아 대륙에서 인구가 가장 많은 도시 10개를 내림차순으로 보여줄 것
SELECT co.Continent AS '대륙명', co.NAME AS '국가명',
       c.NAME AS '도시명', c.Population AS '인구수'
  FROM country AS co
  INNER JOIN city AS c
  ON co.CODE=c.CountryCode
  WHERE co.Continent='Asia'
  ORDER BY c.Population DESC LIMIT 10;

# 5) 전 세계에서 인구가 가장 많은 10개 도시에서 사용하는 공식언어는?
SELECT c.NAME AS '도시명', c.Population AS '인구수',
       cl.Language AS '언어명'
  FROM city AS c INNER JOIN countrylanguage AS cl
  ON c.CountryCode=cl.CountryCode 
  WHERE cl.IsOfficial=true
  ORDER BY c.Population DESC LIMIT 10;
