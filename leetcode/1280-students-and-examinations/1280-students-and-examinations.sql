# Write your MySQL query statement below
-- SELECT
--     s.student_id,
--     s.student_name,
--     sub.subject_name,
--     COUNT(e.subject_name) AS attended_exams
-- FROM
--     Students AS s
-- CROSS JOIN
--     Subjects AS sub
-- LEFT JOIN
--     Examinations AS e
-- ON
--     s.student_id = e.student_id
--     AND sub.subject_name = e.subject_name
-- GROUP BY
--     s.student_id,
--     s.student_name,
--     sub.subject_name
-- ORDER BY
--     s.student_id ASC,
--     sub.subject_name ASC;


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
    1 ASC;