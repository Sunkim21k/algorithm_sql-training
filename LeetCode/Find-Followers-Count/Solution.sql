# Write your MySQL query statement below
SELECT
    user_id,
    COUNT(DISTINCT follower_id) AS followers_count
FROM
    FOLLOWERS
GROUP BY
    user_id
ORDER BY
    1 ASC;