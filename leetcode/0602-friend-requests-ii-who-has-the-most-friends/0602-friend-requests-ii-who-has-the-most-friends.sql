# Write your MySQL query statement below
WITH id_cnt AS (
    SELECT
        requester_id
    FROM
        REQUESTACCEPTED
    UNION ALL
    SELECT
        accepter_id
    FROM
        REQUESTACCEPTED
)

SELECT
    requester_id AS id,
    COUNT(*) AS num
FROM
    id_cnt
GROUP BY
    requester_id
ORDER BY
    2 DESC
LIMIT 1;