# Write your MySQL query statement below
SELECT
    teacher_id,
    COUNT(DISTINCT SUBJECT_ID) AS cnt
FROM
    TEACHER
GROUP BY
    TEACHER_ID