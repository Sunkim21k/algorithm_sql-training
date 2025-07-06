# Write your MySQL query statement below
SELECT
    S.student_id,
    S.student_name,
    SS.subject_name,
    COUNT(E.STUDENT_ID) AS attended_exams
FROM
    STUDENTS S
CROSS JOIN
    SUBJECTS SS
LEFT JOIN
    EXAMINATIONS AS E
    ON S.STUDENT_ID = E.STUDENT_ID
    AND SS.SUBJECT_NAME = E.SUBJECT_NAME
GROUP BY
    S.student_id,
    S.student_name,
    SS.subject_name
ORDER BY
    S.student_id ASC;