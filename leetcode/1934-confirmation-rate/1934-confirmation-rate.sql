# Write your MySQL query statement below
-- SELECT
--     S.USER_ID,
--     ROUND(SUM(IF(C.ACTION = 'confirmed',1,0)) / IFNULL(count(*),1),2) AS confirmation_rate
-- FROM
--     SIGNUPS AS S
-- LEFT JOIN
--     CONFIRMATIONS AS C
--     ON S.USER_ID = C.USER_ID
-- GROUP BY
--     S.USER_ID;

SELECT
    S.user_id,
    ROUND(SUM(IF(C.action = 'confirmed',1,0)) / IFNULL(COUNT(*),1),2) AS confirmation_rate
FROM
    SIGNUPS AS S
LEFT JOIN
    CONFIRMATIONS AS C
    ON S.USER_ID = C.USER_ID
GROUP BY
    S.USER_ID