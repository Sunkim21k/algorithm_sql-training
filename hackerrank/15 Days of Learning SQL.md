# 15 Days of Learning SQL

https://www.hackerrank.com/challenges/15-days-of-learning-sql/problem?isFullScreen=false

### Problem

Julia conducted a 15 days of learning SQL contest. The start date of the contest was *March 01, 2016* and the end date was *March 15, 2016*.

Write a query to print total number of unique hackers who made at least 1 submission each day (starting on the first day of the contest), and find the *hacker_id* and *name* of the hacker who made maximum number of submissions each day. If more than one such hacker has a maximum number of submissions, print the lowest *hacker_id*. The query should print this information for each day of the contest, sorted by the date.

---

**Input Format**

The following tables hold contest data:

- *Hackers:* The *hacker_id* is the id of the hacker, and *name* is the name of the hacker.
    
    ![https://s3.amazonaws.com/hr-challenge-images/19597/1458511164-12adec3b8b-ScreenShot2016-03-21at3.26.47AM.png](https://s3.amazonaws.com/hr-challenge-images/19597/1458511164-12adec3b8b-ScreenShot2016-03-21at3.26.47AM.png)
    
- *Submissions:* The *submission_date* is the date of the submission, *submission_id* is the id of the submission, *hacker_id* is the id of the hacker who made the submission, and *score* is the score of the submission.
    
    ![https://s3.amazonaws.com/hr-challenge-images/19597/1458511251-0b534030b9-ScreenShot2016-03-21at3.26.56AM.png](https://s3.amazonaws.com/hr-challenge-images/19597/1458511251-0b534030b9-ScreenShot2016-03-21at3.26.56AM.png)
    

**Sample Input**

For the following sample input, assume that the end date of the contest was *March 06, 2016*.

*Hackers* Table:

![https://s3.amazonaws.com/hr-challenge-images/19597/1458511957-814a2c7bf2-ScreenShot2016-03-21at3.27.06AM.png](https://s3.amazonaws.com/hr-challenge-images/19597/1458511957-814a2c7bf2-ScreenShot2016-03-21at3.27.06AM.png)

*Submissions* Table:

![https://s3.amazonaws.com/hr-challenge-images/19597/1458512015-ff6a708164-ScreenShot2016-03-21at3.27.21AM.png](https://s3.amazonaws.com/hr-challenge-images/19597/1458512015-ff6a708164-ScreenShot2016-03-21at3.27.21AM.png)

**Sample Output**

`2016-03-01 4 20703 Angela
2016-03-02 2 79722 Michael
2016-03-03 2 20703 Angela
2016-03-04 2 20703 Angela
2016-03-05 1 36396 Frank
2016-03-06 1 20703 Angela`

**Explanation**

On *March 01, 2016* hackers 20703, 36396, 53473, and 79722 made submissions. There are 4 unique hackers who made at least one submission each day. As each hacker made one submission, 20703 is considered to be the hacker who made maximum number of submissions on this day. The name of the hacker is *Angela*.

On *March 02, 2016* hackers 15758, 20703, and 79722 made submissions. Now 20703 and 79722 were the only ones to submit every day, so there are 2 unique hackers who made at least one submission each day. 79722 made 2 submissions, and name of the hacker is *Michael*.

On *March 03, 2016* hackers 20703, 36396, and 79722 made submissions. Now 20703 and 79722 were the only ones, so there are 2 unique hackers who made at least one submission each day. As each hacker made one submission so 20703 is considered to be the hacker who made maximum number of submissions on this day. The name of the hacker is *Angela*.

On *March 04, 2016* hackers 20703, 44065, 53473, and 79722 made submissions. Now 20703 and 79722 only submitted each day, so there are 2 unique hackers who made at least one submission each day. As each hacker made one submission so 20703 is considered to be the hacker who made maximum number of submissions on this day. The name of the hacker is *Angela*.

On *March 05, 2016* hackers 20703, 36396, 38289 and 62529 made submissions. Now 20703 only submitted each day, so there is only 1 unique hacker who made at least one submission each day. 36396 made 2 submissions and name of the hacker is *Frank*.

On *March 06, 2016* only 20703 made submission, so there is only 1 unique hacker who made at least one submission each day. 20703 made 1 submission and name of the hacker is *Angela*.

### Submissions

```sql

/*
 results : date, (1)unique hackers count, (2)most submission hacker_id, name
 - condition 1-1 : starting on the first day of the contest
 - condition 2-1 : maximum number of submissions hacker_id and name
    - not required : consecutive submissions
 - condition 2-2 : if same maximum id -> low hacker_id first
 4. sort day of the contest
*/

SELECT
    S.SUBMISSION_DATE,
    ACTIVE_HACKERS,
    C2.HACKER_ID,
    C2.NAME
FROM
    SUBMISSIONS AS S

INNER JOIN
    (
        SELECT 
            S1.SUBMISSION_DATE,  
            COUNT(DISTINCT S1.HACKER_ID) AS ACTIVE_HACKERS  
        FROM SUBMISSIONS S1  
        JOIN (  
            SELECT HACKER_ID  
            FROM SUBMISSIONS  
            WHERE SUBMISSION_DATE = (SELECT MIN(SUBMISSION_DATE) FROM SUBMISSIONS)  
            GROUP BY HACKER_ID  
        ) F ON S1.HACKER_ID = F.HACKER_ID  
        WHERE NOT EXISTS (  
            SELECT 1  
            FROM SUBMISSIONS S2  
            WHERE S2.HACKER_ID = S1.HACKER_ID  
            AND S2.SUBMISSION_DATE < S1.SUBMISSION_DATE  
            AND NOT EXISTS (  
                SELECT 1  
                FROM SUBMISSIONS S3  
                WHERE S3.HACKER_ID = S1.HACKER_ID  
                AND S3.SUBMISSION_DATE = S2.SUBMISSION_DATE + INTERVAL 1 DAY  
            )  
        )  
        GROUP BY S1.SUBMISSION_DATE  
    ) AS C1
    ON S.SUBMISSION_DATE = C1.SUBMISSION_DATE

INNER JOIN
    (
        SELECT
            SUBMISSION_DATE,
            HACKER_ID,
            NAME
        FROM
        (
            SELECT 
                S1.SUBMISSION_DATE,
                S1.HACKER_ID,
                H.NAME,
                S1.CNT_SUB,
                (
                    SELECT 
                        COUNT(*) 
                    FROM 
                         (
                             SELECT 
                                 S2.SUBMISSION_DATE, 
                                 S2.HACKER_ID, 
                                 COUNT(S2.SUBMISSION_ID) AS CNT_SUB
                             FROM 
                                 SUBMISSIONS AS S2
                             GROUP BY 
                                 S2.SUBMISSION_DATE, 
                                 S2.HACKER_ID
                         ) AS Sub
                     WHERE 
                         Sub.SUBMISSION_DATE = S1.SUBMISSION_DATE 
                         AND (Sub.CNT_SUB > S1.CNT_SUB 
                             OR (Sub.CNT_SUB = S1.CNT_SUB 
                                 AND Sub.HACKER_ID < S1.HACKER_ID))
                ) + 1 AS RN
            FROM 
                (
                    SELECT 
                        S.SUBMISSION_DATE,
                        S.HACKER_ID,
                        COUNT(S.SUBMISSION_ID) AS CNT_SUB
                    FROM 
                        SUBMISSIONS AS S
                    GROUP BY 
                        S.SUBMISSION_DATE, 
                        S.HACKER_ID
                ) AS S1
            INNER JOIN 
                HACKERS H ON S1.HACKER_ID = H.HACKER_ID
        ) AS MAX_USER
        WHERE
            RN = 1
    ) AS C2
    ON S.SUBMISSION_DATE = C2.SUBMISSION_DATE

GROUP BY
    S.SUBMISSION_DATE,
    C2.HACKER_ID,
    C2.NAME
ORDER BY
    S.SUBMISSION_DATE ASC;
    
```