# Write your MySQL query statement below
SELECT
    project_id,
    average_years
FROM(
    SELECT 
        p.project_id,
        SUM(e.experience_years) / COUNT(*) AS average_years
    FROM
        Project AS p
    LEFT JOIN
        Employee AS e
    ON
        p.employee_id = e.employee_id
    GROUP BY
        p.project_id
) AS avg_project