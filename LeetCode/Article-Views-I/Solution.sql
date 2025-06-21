# Write your MySQL query statement below
SELECT
    author_id as id
FROM
    VIEWS
WHERE
    author_id = viewer_id
GROUP BY
    author_id
ORDER BY
    1 ASC;