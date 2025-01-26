# Challenges

https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=false

### Problem

Julia asked her students to create some coding challenges. Write a query to print the *hacker_id*, *name*, and the total number of challenges created by each student. Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by *hacker_id*. If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.

**Input Format**

The following tables contain challenge data:

- *Hackers:* The *hacker_id* is the id of the hacker, and *name* is the name of the hacker.
    
    ![https://s3.amazonaws.com/hr-challenge-images/19506/1458521004-cb4c077dd3-ScreenShot2016-03-21at6.06.54AM.png](https://s3.amazonaws.com/hr-challenge-images/19506/1458521004-cb4c077dd3-ScreenShot2016-03-21at6.06.54AM.png)
    
- *Challenges:* The *challenge_id* is the id of the challenge, and *hacker_id* is the id of the student who created the challenge.
    
    ![https://s3.amazonaws.com/hr-challenge-images/19506/1458521079-549341d9ec-ScreenShot2016-03-21at6.07.03AM.png](https://s3.amazonaws.com/hr-challenge-images/19506/1458521079-549341d9ec-ScreenShot2016-03-21at6.07.03AM.png)
    

---

**Sample Input 0**

*Hackers* Table:

![https://s3.amazonaws.com/hr-challenge-images/19506/1458521384-34c6866dae-ScreenShot2016-03-21at6.07.15AM.png](https://s3.amazonaws.com/hr-challenge-images/19506/1458521384-34c6866dae-ScreenShot2016-03-21at6.07.15AM.png)

*Challenges* Table:

![https://s3.amazonaws.com/hr-challenge-images/19506/1458521410-befa8e1cd9-ScreenShot2016-03-21at6.07.25AM.png](https://s3.amazonaws.com/hr-challenge-images/19506/1458521410-befa8e1cd9-ScreenShot2016-03-21at6.07.25AM.png)

**Sample Output 0**

```
21283 Angela 6
88255 Patrick 5
96196 Lisa 1
```

**Sample Input 1**

*Hackers* Table:

![https://s3.amazonaws.com/hr-challenge-images/19506/1458521469-87036deea3-ScreenShot2016-03-21at6.07.48AM.png](https://s3.amazonaws.com/hr-challenge-images/19506/1458521469-87036deea3-ScreenShot2016-03-21at6.07.48AM.png)

*Challenges* Table:

![https://s3.amazonaws.com/hr-challenge-images/19506/1458521490-358215cf0b-ScreenShot2016-03-21at6.07.58AM.png](https://s3.amazonaws.com/hr-challenge-images/19506/1458521490-358215cf0b-ScreenShot2016-03-21at6.07.58AM.png)

**Sample Output 1**

```
12299 Rose 6
34856 Angela 6
79345 Frank 4
80491 Patrick 3
81041 Lisa 1
```

**Explanation**

For *Sample Case 0*, we can get the following details:

![https://s3.amazonaws.com/hr-challenge-images/19506/1458521677-fd04c384c0-ScreenShot2016-03-21at6.07.38AM.png](https://s3.amazonaws.com/hr-challenge-images/19506/1458521677-fd04c384c0-ScreenShot2016-03-21at6.07.38AM.png)

Students 5077 and 62743 both created 4 challenges, but the maximum number of challenges created is 6 so these students are excluded from the result.

For *Sample Case 1*, we can get the following details:

![https://s3.amazonaws.com/hr-challenge-images/19506/1458521836-24039e7523-ScreenShot2016-03-21at6.08.08AM.png](https://s3.amazonaws.com/hr-challenge-images/19506/1458521836-24039e7523-ScreenShot2016-03-21at6.08.08AM.png)

Students 12299 and 34856 both created 6 challenges. Because  is the maximum number of challenges created, these students are included in the result.

### Submissions

```sql
/*
 1. hacker_id, name, challenges_created
 2. sort : challenges_created desc, hacker_id asc
 3. exclude : same challenges + no max challenges
*/
WITH challenge_count AS (
    SELECT
        hacker_id,
        COUNT(*) AS challenges_created
    FROM
        Challenges
    GROUP BY
        hacker_id
),
Max_challenge AS (
    SELECT
        MAX(challenges_created) AS max_challenge
    FROM
        challenge_count
)

SELECT
    h.hacker_id,
    h.name,
    c.challenges_created
FROM
    Hackers AS h
INNER JOIN
    challenge_count AS c
    ON h.hacker_id = c.hacker_id
WHERE
    c.challenges_created = (SELECT max_challenge FROM Max_challenge)
    OR (
        c.challenges_created NOT IN (
            SELECT
                challenges_created
            FROM
                challenge_count
            WHERE
                challenges_created < (SELECT max_challenge FROM Max_challenge)
            GROUP BY
                challenges_created
            HAVING
                COUNT(*) > 1
        )
    )
ORDER BY
    3 DESC,
    1 ASC;
```