# Write your MySQL query statement below
-- SELECT
--     score,
--     DENSE_RANK() OVER (ORDER BY SCORE DESC) AS 'rank'
-- FROM
--     SCORES

SELECT
    SCORE,
    DENSE_RANK() OVER (ORDER BY SCORE DESC) AS 'rank'
FROM
    SCORES