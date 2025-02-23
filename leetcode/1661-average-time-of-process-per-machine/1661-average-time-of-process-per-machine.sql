# Write your MySQL query statement below
WITH process_time_list AS (
    SELECT
        machine_id,
        process_id,
        MAX(timestamp) - MIN(timestamp) AS process_time
    FROM
        ACTIVITY
    GROUP BY
        machine_id,
        process_id
)
SELECT
    machine_id,
    ROUND(AVG(process_time),3) AS processing_time
FROM
    process_time_list
GROUP BY
    machine_id