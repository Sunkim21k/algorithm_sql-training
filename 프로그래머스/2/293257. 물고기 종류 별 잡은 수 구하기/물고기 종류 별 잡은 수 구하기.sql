-- 코드를 작성해주세요
# SELECT  COUNT(*) AS FISH_COUNT
#         ,FN.FISH_NAME AS FISH_NAME
#   FROM  FISH_INFO AS FI
#   LEFT
#   JOIN  FISH_NAME_INFO AS FN
#     ON  FI.FISH_TYPE = FN.FISH_TYPE
#  GROUP
#     BY  FISH_NAME
#  ORDER
#     BY  FISH_COUNT DESC;


SELECT
    COUNT(FI.FISH_TYPE) AS FISH_COUNT,
    FNI.FISH_NAME
FROM
    FISH_INFO AS FI
INNER JOIN
    FISH_NAME_INFO AS FNI
    ON FI.FISH_TYPE = FNI.FISH_TYPE
GROUP BY
    FNI.FISH_NAME
ORDER BY
    1 DESC;