# Write your MySQL query statement below
WITH first_login_info AS (
    SELECT
        player_id,
        MIN(event_date) AS first_login
    FROM
        ACTIVITY
    GROUP BY
        player_id
)

SELECT
    ROUND(COUNT(DISTINCT a.player_id) / (SELECT COUNT(DISTINCT PLAYER_ID) FROM ACTIVITY),2) AS fraction
FROM
    ACTIVITY AS a
INNER JOIN
    first_login_info AS fli
    ON a.player_id = fli.player_id
WHERE
    a.event_date = DATE_ADD(fli.first_login, INTERVAL 1 DAY);

