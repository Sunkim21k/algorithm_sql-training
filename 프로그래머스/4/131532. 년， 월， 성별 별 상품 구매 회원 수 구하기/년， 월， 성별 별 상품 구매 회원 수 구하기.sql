/*
    1. 년, 월, 성별 별로 상품을 구매한 회원수
    2. 정렬 : 년, 월, 성별 오름차순
    3. 성별 정보가 없는 경우 제외
*/
-- 코드를 입력하세요
# SELECT
#     YEAR(SALE.SALES_DATE) AS YEAR,
#     MONTH(SALE.SALES_DATE) AS MONTH,
#     INFO.GENDER,
#     COUNT(DISTINCT SALE.USER_ID) AS USERS
# FROM
#     ONLINE_SALE AS SALE
# INNER JOIN
#     USER_INFO AS INFO
#     ON SALE.USER_ID = INFO.USER_ID
# WHERE
#     INFO.GENDER IS NOT NULL
# GROUP BY
#     YEAR,
#     MONTH,
#     INFO.GENDER
# ORDER BY
#     YEAR ASC,
#     MONTH ASC,
#     INFO.GENDER ASC;


/*
 1. 년, 월, 성별 별 상품 구매 회원수
 2. 성별 정보가 없는 경우 제외
 3. 정렬 : 년, 월, 성별 오름차순
*/

SELECT
    YEAR(OS.SALES_DATE) AS YEAR,
    MONTH(OS.SALES_DATE) AS MONTH,
    UI.GENDER,
    COUNT(DISTINCT OS.USER_ID)
FROM
    ONLINE_SALE AS OS
INNER JOIN
    USER_INFO AS UI
    ON OS.USER_ID = UI.USER_ID
WHERE
    UI.GENDER IS NOT NULL
GROUP BY
    YEAR,
    MONTH,
    UI.GENDER
ORDER BY
    YEAR ASC,
    MONTH ASC,
    UI.GENDER ASC;

    
