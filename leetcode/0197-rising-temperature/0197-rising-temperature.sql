# Write your MySQL query statement below
-- SELECT
--     w1.id
-- FROM
--     Weather AS w1
-- JOIN
--     Weather AS w2
-- ON 
--     w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
-- WHERE
--     w1.temperature > w2.temperature;

SELECT
    w1.id
FROM
    WEATHER AS W1
INNER JOIN
    WEATHER AS W2
    ON W1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
WHERE
    w1.temperature - w2.temperature > 0