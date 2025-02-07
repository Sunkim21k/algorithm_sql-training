# Write your MySQL query statement below
WITH most_reviewer AS (
    SELECT
        MR.user_id,
        U.name,
        COUNT(*) AS cnt
    FROM
        MOVIERATING AS MR
    INNER JOIN
        USERS AS U 
        ON MR.USER_ID = U.USER_ID
    GROUP BY
        MR.USER_ID,
        U.NAME
    ORDER BY
        3 DESC,
        2 ASC
    LIMIT 1
), best_movie_2020fe AS (
    SELECT
        M.TITLE,
        AVG(MR.RATING) AS RATING
    FROM
        MOVIERATING AS MR
    INNER JOIN
        MOVIES AS M
        ON MR.MOVIE_ID = M.MOVIE_ID
    WHERE
        MR.CREATED_AT LIKE '2020-02%'
    GROUP BY
        M.TITLE
    ORDER BY
        2 DESC,
        1 ASC
    LIMIT 1
)

SELECT
    name AS results
FROM
    most_reviewer

UNION ALL

SELECT
    title AS results
FROM
    best_movie_2020fe;