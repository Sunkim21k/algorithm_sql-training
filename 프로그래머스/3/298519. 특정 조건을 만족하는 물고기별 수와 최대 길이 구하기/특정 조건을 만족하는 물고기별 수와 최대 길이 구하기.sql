-- 코드를 작성해주세요
# SELECT
#     COUNT(*) AS FISH_COUNT,
#     MAX(LENGTH) AS MAX_LENGTH,
#     FISH_TYPE
# FROM
#     (
#         SELECT ID, FISH_TYPE, TIME,
#             (CASE 
#                 WHEN LENGTH IS NULL THEN 10
#                 ELSE LENGTH
#              END) AS LENGTH
#         FROM FISH_INFO
#     ) AS FISH_INFO
# GROUP BY
#     FISH_TYPE
# HAVING
#     AVG(LENGTH) >= 33
# ORDER BY
#     FISH_TYPE;

/*
평균길이 33cm 이상 물고기 출력
*/
WITH FISH_LIST AS (
    SELECT
        FISH_TYPE,
        CASE
            WHEN LENGTH IS NULL THEN 10
            ELSE LENGTH
        END LENGTH
    FROM
        FISH_INFO
), FISH_FIND AS (
SELECT
    FISH_TYPE   
FROM
    FISH_LIST
GROUP BY
    FISH_TYPE
HAVING
    AVG(LENGTH) >= 33
)
SELECT
    COUNT(*) AS FISH_COUNT,
    MAX(LENGTH) AS MAX_LENGTH,
    FISH_TYPE
FROM
    FISH_LIST
WHERE
    FISH_TYPE IN (SELECT FISH_TYPE FROM FISH_FIND)
GROUP BY
    FISH_TYPE
ORDER BY
    FISH_TYPE ASC;