# Write your MySQL query statement below
WITH PERSON_STACK AS (
    SELECT
        person_name,
        turn,
        CASE 
            WHEN SUM(weight) OVER (ORDER BY turn ASC) > 1000 THEN 'OVER'
            ELSE 'BOARD'
        END STACK
    FROM
        QUEUE
)

SELECT
    person_name
FROM
    PERSON_STACK
WHERE
    TURN IN (SELECT MAX(TURN) FROM PERSON_STACK WHERE STACK = 'BOARD');