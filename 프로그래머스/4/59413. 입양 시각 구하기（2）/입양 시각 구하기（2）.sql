/*
  1. 시간대별 입양 건수
  2. 입양이 없는 건수도 0으로 출력 (RECURSIVE CTE)
*/
-- 코드를 입력하세요
# WITH RECURSIVE HOURS AS (
#     SELECT 
#         0 AS HOUR 
#     UNION ALL
#     SELECT 
#         HOUR + 1
#     FROM 
#         HOURS
#     WHERE 
#         HOUR < 23
# )
# SELECT
#     H.HOUR,
#     COALESCE(COUNT(A.ANIMAL_ID), 0) AS COUNT
# FROM
#     HOURS AS H
# LEFT JOIN
#     (
#         SELECT
#             HOUR(DATETIME) AS HOUR,
#             ANIMAL_ID
#         FROM
#             ANIMAL_OUTS
#     ) AS A
#     ON H.HOUR = A.HOUR
# GROUP BY
#     H.HOUR
# ORDER BY
#     H.HOUR ASC;


WITH RECURSIVE CHECK_HOURS AS (
    SELECT
        0 AS HOUR
    UNION ALL
    SELECT
        HOUR + 1
    FROM
        CHECK_HOURS
    WHERE
        HOUR < 23
)

SELECT 
    CH.HOUR,
    IF(AO.COUNT <> 0, AO.COUNT, 0) AS COUNT
FROM
    CHECK_HOURS AS CH
LEFT JOIN
    (
        SELECT
            HOUR(DATETIME) AS HOUR,
            COUNT(*) AS COUNT
        FROM    
            ANIMAL_OUTS
        GROUP BY
            HOUR(DATETIME)            
    ) AS AO
    ON CH.HOUR = AO.HOUR


 