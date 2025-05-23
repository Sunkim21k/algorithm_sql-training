-- 코드를 입력하세요
# SELECT
#     FOOD_TYPE,
#     REST_ID,
#     REST_NAME,
#     FAVORITES
# FROM
#     REST_INFO
# WHERE
#     (FOOD_TYPE, FAVORITES) IN (
#         SELECT FOOD_TYPE, MAX(FAVORITES)
#         FROM REST_INFO
#         GROUP BY FOOD_TYPE
#     )
# ORDER BY
#     FOOD_TYPE DESC;

WITH MOST_REST_LIST AS (
    SELECT
        FOOD_TYPE,
        REST_ID,
        RANK() OVER(PARTITION BY FOOD_TYPE ORDER BY FAVORITES DESC) AS RN
    FROM
        REST_INFO
)
SELECT
    FOOD_TYPE,
    REST_ID,
    REST_NAME,
    FAVORITES
FROM
    REST_INFO
WHERE
    REST_ID IN (SELECT REST_ID FROM MOST_REST_LIST WHERE RN = 1)
ORDER BY
    1 DESC;