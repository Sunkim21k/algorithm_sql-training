/*
1. 부서별 평균 연봉 조회
2. 출력 : 부서ID, 영문 부서명, 평균 연봉(첫째자리 반올림)
3. 정렬 : 평균 연봉 내림차순
*/
SELECT
    HD.DEPT_ID,
    HD.DEPT_NAME_EN,
    ROUND(AVG(HE.SAL)) AS AVG_SAL
FROM
    HR_DEPARTMENT AS HD
INNER JOIN
    HR_EMPLOYEES AS HE
ON
    HD.DEPT_ID = HE.DEPT_ID
GROUP BY
    HD.DEPT_ID,
    HD.DEPT_NAME_EN
ORDER BY
    AVG_SAL DESC;