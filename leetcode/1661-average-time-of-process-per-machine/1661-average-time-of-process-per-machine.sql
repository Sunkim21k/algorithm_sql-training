# Write your MySQL query statement below
SELECT
    machine_id,
    ROUND(AVG(times),3) AS processing_time
FROM(
    SELECT
        machine_id,
        process_id,
        MAX(timestamp) - MIN(timestamp) AS times
    FROM
        Activity
    GROUP BY
        machine_id,
        process_id) AS process
GROUP BY
    machine_id;