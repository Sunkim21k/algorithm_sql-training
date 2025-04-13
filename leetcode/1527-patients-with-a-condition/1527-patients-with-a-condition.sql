# Write your MySQL query statement below
-- SELECT
--     patient_id,
--     patient_name,
--     conditions
-- FROM
--     Patients
-- WHERE
--     conditions LIKE ('DIAB1%')
--     OR conditions LIKE ('% DIAB1%');

SELECT
    patient_id,
    patient_name,
    conditions
FROM
    PATIENTS
WHERE
    CONDITIONS LIKE ('DIAB1%')
    OR CONDITIONS LIKE ('% DIAB1%');