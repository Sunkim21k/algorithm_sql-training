-- 코드를 입력하세요
# SELECT
#     ORDER_ID,
#     PRODUCT_ID,
#     DATE_FORMAT(OUT_DATE, '%Y-%m-%d') AS OUT_DATE,
#     (CASE
#         WHEN OUT_DATE <= '2022-05-01' THEN '출고완료'
#         WHEN OUT_DATE IS NULL THEN '출고미정'
#         WHEN OUT_DATE > '2022-05-01' THEN '출고대기'
#     END) AS '출고여부'
# FROM
#     FOOD_ORDER
# ORDER BY
#     ORDER_ID ASC;


/*
 - 2022.05.01기준 주문ID, 제품ID, 출고일자, 출고여부
 - 2022.05.01까지 출고완료처리, 주문 ID 오름차순 정렬
*/
SELECT
    ORDER_ID,
    PRODUCT_ID,
    DATE_FORMAT(OUT_DATE,'%Y-%m-%d') AS OUT_DATE,
    (CASE
        WHEN OUT_DATE <= '2022-05-01' THEN '출고완료'
        WHEN OUT_DATE > '2022-05-01' THEN '출고대기'
        ELSE '출고미정'
    END) AS '출고여부'
FROM
    FOOD_ORDER
ORDER BY
    1 ASC;





