/*
 1. 2022년 3월 온/오프 판매 날짜, 상품ID, 유저ID, 판매량
 2. 오프라인 유저 NULL
 3. 정렬 : 판매일, 상품ID, 유저ID 오름차순
*/
-- 코드를 입력하세요
SELECT
    SALES_DATE,
    PRODUCT_ID,
    USER_ID,
    SALES_AMOUNT
FROM 
    (
        SELECT
            DATE_FORMAT(SALES_DATE,'%Y-%m-%d') AS SALES_DATE,
            PRODUCT_ID,
            USER_ID,
            SALES_AMOUNT
        FROM 
            ONLINE_SALE
        WHERE
            SALES_DATE BETWEEN '2022-03-01' AND '2022-03-31'
        UNION ALL
        SELECT
            SALES_DATE,
            PRODUCT_ID,
            NULL AS USER_ID,
            SALES_AMOUNT
        FROM
            OFFLINE_SALE
        WHERE
            SALES_DATE BETWEEN '2022-03-01' AND '2022-03-31'
    ) AS UNION_TABLE
ORDER BY
    SALES_DATE ASC,
    PRODUCT_ID ASC,
    USER_ID ASC;