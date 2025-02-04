# Write your MySQL query statement below
SELECT
    DISTINCT ConsecutiveNums
FROM
(
    SELECT
        CASE
            WHEN l1.num = l2.num AND l2.num = l3.num THEN l1.num
            ELSE NULL
        END ConsecutiveNums
    FROM
        (
            SELECT
                id,
                num,
                id+1 AS id_1,
                id+2 AS id_2
            FROM
                LOGS
        ) AS l1
    INNER JOIN
        LOGS AS l2
        ON l1.id_1 = l2.id
    INNER JOIN
        LOGS AS l3
        ON l1.id_2 = l3.id
) t1
WHERE
    ConsecutiveNums IS NOT NULL;