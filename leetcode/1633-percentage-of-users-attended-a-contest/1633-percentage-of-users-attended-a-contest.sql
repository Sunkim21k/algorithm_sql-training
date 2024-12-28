# Write your MySQL query statement below
With total_user AS (
    SELECT COUNT(DISTINCT user_id)
    FROM Users
)

SELECT
    contest_id,
    ROUND((COUNT(DISTINCT user_id) / (SELECT * FROM total_user)) * 100,2) AS percentage
FROM
    Register
GROUP BY
    contest_id
ORDER BY
    percentage DESC,
    contest_id ASC;