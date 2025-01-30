# Write your MySQL query statement below
SELECT
    s1.student_id,
    s1.subject,
    s1.score AS first_score,
    s2.score AS latest_score
FROM
    SCORES AS s1
INNER JOIN
    SCORES AS s2
    ON s1.student_id = s2.student_id
    AND s1.subject = s2.subject
WHERE
    s1.exam_date = (
        SELECT
            MIN(exam_date)
        FROM
            SCORES
        WHERE
            SCORES.STUDENT_ID = s1.student_id
            AND SCORES.subject = s1.subject
    )
    AND s2.exam_date = (
        SELECT
            MAX(exam_date)
        FROM
            SCORES
        WHERE
            SCORES.STUDENT_ID = s2.student_id
            AND SCORES.subject = s2.subject
    )
    AND s1.score < s2.score
ORDER BY
    s1.student_id ASC,
    s1.subject ASC;