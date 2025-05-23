-- 코드를 입력하세요
SELECT
    AI.NAME,
    AI.DATETIME
FROM
    ANIMAL_INS AS AI
WHERE
    AI.ANIMAL_ID NOT IN (
        SELECT ANIMAL_ID
        FROM ANIMAL_OUTS
    )
ORDER BY
    AI.DATETIME ASC
LIMIT 3;

# WITH CHECK_LONG_ANIMAL AS (
#     SELECT
#         NAME,
#         RANK() OVER(ORDER BY DATETIME ASC) AS RN
#     FROM
#         ANIMAL_INS
#     WHERE
#         ANIMAL_ID NOT IN (SELECT ANIMAL_ID FROM ANIMAL_OUTS)
# )
# SELECT
#     AI.NAME,
#     AI.DATETIME
# FROM
#     ANIMAL_INS AS AI
# INNER JOIN
#     CHECK_LONG_ANIMAL AS CLA
#     ON AI.NAME = CLA.NAME
# WHERE
#     CLA.RN <= 3
# ORDER BY
#     2 ASC;