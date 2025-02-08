-- 코드를 입력하세요
/*
 1. 2021년도 가입 회원 중 월별 상품 구매 회원
   - 구매년도, 월, 구매회원수, 구매회원비율
 2. 정렬 : 년, 월
*/
WITH CHECK_USER_LIST AS (
    SELECT
        USER_ID
    FROM
        USER_INFO
    WHERE
        YEAR(JOINED) = 2021
)
# , CHECK_ONLINE_SALE AS (
SELECT
    YEAR(OS.SALES_DATE) AS YEAR,
    MONTH(OS.SALES_DATE) AS MONTH,
    COUNT(DISTINCT OS.USER_ID) AS PURCHASED_USERS,
    ROUND(COUNT(DISTINCT OS.USER_ID) / 
          (
            SELECT 
                COUNT(DISTINCT USER_ID) 
            FROM 
                CHECK_USER_LIST),
          1) AS PUCHASED_RATIO
FROM
    ONLINE_SALE AS OS
INNER JOIN
    CHECK_USER_LIST AS CUL
    ON OS.USER_ID = CUL.USER_ID
GROUP BY
    YEAR(OS.SALES_DATE),
    MONTH(OS.SALES_DATE)
ORDER BY
    1 ASC,
    2 ASC;