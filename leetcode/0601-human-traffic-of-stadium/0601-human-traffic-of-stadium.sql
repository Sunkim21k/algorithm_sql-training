# Write your MySQL query statement below
WITH CHECK_NUMBER_LIST AS (
    SELECT
        id,
        visit_date,
        people,
        LEAD(id, 1) OVER(ORDER BY ID) AS LEAD_ID,
        LEAD(id, 2) OVER(ORDER BY ID) AS LEAD_LEAD_ID,
        LAG(id, 1) OVER(ORDER BY ID) AS PREV_ID,
        LAG(id, 2) OVER(ORDER BY ID) AS PREV_PREV_ID
    FROM
        STADIUM
    WHERE
        people >= 100
)
SELECT
    id,
    visit_date,
    people
FROM
    CHECK_NUMBER_LIST
WHERE
    (id = LEAD_ID - 1
    AND LEAD_ID = LEAD_LEAD_ID - 1)
    OR
    (id = PREV_ID + 1
    AND PREV_ID = PREV_PREV_ID + 1)
    OR
    (id = PREV_ID + 1
    AND id = LEAD_ID - 1)