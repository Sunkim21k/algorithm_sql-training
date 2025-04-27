# Write your MySQL query statement below
-- SELECT
--     activity_date AS day,
--     COUNT(DISTINCT user_id) AS active_users
-- FROM 
--     Activity
-- WHERE
--     activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 30 DAY)+1 AND '2019-07-27'
-- GROUP BY
--     activity_date;


SELECT
    activity_date AS day,
    COUNT(DISTINCT USER_ID) AS active_users
FROM
    ACTIVITY
WHERE
    activity_date BETWEEN DATE_ADD('2019-07-27', INTERVAL -29 DAY) AND '2019-07-27'
GROUP BY
    1
