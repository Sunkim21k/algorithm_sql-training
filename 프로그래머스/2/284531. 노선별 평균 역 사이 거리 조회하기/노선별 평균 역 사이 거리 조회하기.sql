-- 코드를 작성해주세요
# SELECT  
#     ROUTE
#     ,CONCAT(ROUND(SUM(D_BETWEEN_DIST),1),'km') AS TOTAL_DISTANCE
#     ,CONCAT(ROUND(AVG(D_BETWEEN_DIST),2),'km') AS AVERAGE_DISTANCE
# FROM  
#     SUBWAY_DISTANCE
# GROUP BY  
#     ROUTE
# ORDER BY
#     SUM(D_BETWEEN_DIST) DESC;


/*
 - 노선별 노선, 총 누계 거리, 평균 역 사이 거리 
 - 총 누계거리 : 역 사이 거리 총합 (둘째자리반올림)
 - 평균역 사이거리 셋째자리 반올림 +'km'출력
 - 총 누계 거리 내림차순 정렬
*/

SELECT
    ROUTE,
    CONCAT(ROUND(SUM(D_BETWEEN_DIST),1),'km') AS TOTAL_DISTANCE,
    CONCAT(ROUND(AVG(D_BETWEEN_DIST),2),'km') AS AVERAGE_DISTANCE
FROM
    SUBWAY_DISTANCE
GROUP BY
    ROUTE
ORDER BY
    SUM(D_BETWEEN_DIST) DESC;