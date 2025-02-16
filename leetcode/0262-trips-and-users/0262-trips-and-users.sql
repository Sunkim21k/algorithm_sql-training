# Write your MySQL query statement below
/*
 일일 취소율 (밴된 USER 제외)
*/

SELECT
    request_at AS Day,
    ROUND(SUM(IF(STATUS <> 'completed', 1, 0)) / COUNT(*),2) as 'Cancellation Rate'
FROM
    TRIPS
WHERE
    CLIENT_ID NOT IN (
        SELECT
            USERS_ID
        FROM
            USERS
        WHERE
            BANNED = 'Yes'
    )
    AND
        DRIVER_ID NOT IN (
        SELECT
            USERS_ID
        FROM
            USERS
        WHERE
            BANNED = 'Yes'
    )
    AND request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY
    request_at
