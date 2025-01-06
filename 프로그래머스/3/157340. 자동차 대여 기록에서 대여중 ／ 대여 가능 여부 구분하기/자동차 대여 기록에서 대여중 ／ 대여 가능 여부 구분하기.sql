/*
1. 차량별 대여시작일이 2022년 10월 16일 보다 이전
2. 1번중에서 대여종료일이 2022년 10월 16일 보다 이후면 대여중
*/
-- 코드를 입력하세요
SELECT
    CAR_ID,
    (CASE
        WHEN SUM('2022-10-16' BETWEEN START_DATE AND END_DATE) THEN '대여중'
        ELSE '대여 가능'
    END) AS AVAILABILITY
FROM
    CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY
    CAR_ID
ORDER BY
    CAR_ID DESC;
