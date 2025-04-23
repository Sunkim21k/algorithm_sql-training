-- 코드를 작성해주세요
# SELECT  ID
#         ,LENGTH
#   FROM  FISH_INFO
#  ORDER
#     BY  LENGTH DESC
#         ,ID ASC
#  LIMIT  10;

WITH RN_FISH AS (
    SELECT
        ID,
        LENGTH,
        RANK() OVER(ORDER BY LENGTH DESC) AS RN
    FROM
        FISH_INFO
)
SELECT
    ID,
    LENGTH
FROM
    RN_FISH
WHERE
    RN <= 10
# ORDER BY
#     1 ASC;