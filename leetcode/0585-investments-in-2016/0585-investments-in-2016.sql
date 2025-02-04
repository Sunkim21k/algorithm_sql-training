/*
 1. count(tiv_2015) >= 2
 2. count(lat, lon) = 1 
*/
# Write your MySQL query statement below
WITH check_locate AS (
    SELECT
        pid,
        lat,
        lon
    FROM
        INSURANCE
    GROUP BY
        lat,
        lon
    HAVING
        COUNT(*) = 1
),
check_tiv2015 AS (
    SELECT
        tiv_2015
    FROM
        INSURANCE
    GROUP BY
        tiv_2015
    HAVING
        COUNT(*) >= 2
)

SELECT
    SUM(i.tiv_2016) AS tiv_2016
FROM
    INSURANCE AS i
INNER JOIN
    check_tiv2015 AS ct
    ON i.tiv_2015 = ct.tiv_2015
INNER JOIN
    check_locate AS cl
    ON i.pid = cl.pid;