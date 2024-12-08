# Top Competitors

https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=false

### Problem

Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! Write a query to print the respective *hacker_id* and *name* of hackers who achieved full scores for *more than one* challenge. Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending *hacker_id*.

---

**Input Format**

The following tables contain contest data:

- *Hackers:* The *hacker_id* is the id of the hacker, and *name* is the name of the hacker.
    
    ![https://s3.amazonaws.com/hr-challenge-images/19504/1458526776-67667350b4-ScreenShot2016-03-21at7.45.59AM.png](https://s3.amazonaws.com/hr-challenge-images/19504/1458526776-67667350b4-ScreenShot2016-03-21at7.45.59AM.png)
    
- *Difficulty:* The *difficult_level* is the level of difficulty of the challenge, and *score* is the score of the challenge for the difficulty level.
    
    ![https://s3.amazonaws.com/hr-challenge-images/19504/1458526915-57eb75d9a2-ScreenShot2016-03-21at7.46.09AM.png](https://s3.amazonaws.com/hr-challenge-images/19504/1458526915-57eb75d9a2-ScreenShot2016-03-21at7.46.09AM.png)
    
- *Challenges:* The *challenge_id* is the id of the challenge, the *hacker_id* is the id of the hacker who created the challenge, and *difficulty_level* is the level of difficulty of the challenge.
    
    ![https://s3.amazonaws.com/hr-challenge-images/19504/1458527032-f9ca650442-ScreenShot2016-03-21at7.46.17AM.png](https://s3.amazonaws.com/hr-challenge-images/19504/1458527032-f9ca650442-ScreenShot2016-03-21at7.46.17AM.png)
    
- *Submissions:* The *submission_id* is the id of the submission, *hacker_id* is the id of the hacker who made the submission, *challenge_id* is the id of the challenge that the submission belongs to, and *score* is the score of the submission.
    
    ![https://s3.amazonaws.com/hr-challenge-images/19504/1458527077-298f8e922a-ScreenShot2016-03-21at7.46.29AM.png](https://s3.amazonaws.com/hr-challenge-images/19504/1458527077-298f8e922a-ScreenShot2016-03-21at7.46.29AM.png)
    

---

**Sample Input**

*Hackers* Table:

![https://s3.amazonaws.com/hr-challenge-images/19504/1458527241-6922b4ad87-ScreenShot2016-03-21at7.47.02AM.png](https://s3.amazonaws.com/hr-challenge-images/19504/1458527241-6922b4ad87-ScreenShot2016-03-21at7.47.02AM.png)

*Difficulty* Table:

![https://s3.amazonaws.com/hr-challenge-images/19504/1458527265-7ad6852a13-ScreenShot2016-03-21at7.46.50AM.png](https://s3.amazonaws.com/hr-challenge-images/19504/1458527265-7ad6852a13-ScreenShot2016-03-21at7.46.50AM.png)

*Challenges* Table:

![https://s3.amazonaws.com/hr-challenge-images/19504/1458527285-01e95eb6ec-ScreenShot2016-03-21at7.46.40AM.png](https://s3.amazonaws.com/hr-challenge-images/19504/1458527285-01e95eb6ec-ScreenShot2016-03-21at7.46.40AM.png)

*Submissions* Table:

![https://s3.amazonaws.com/hr-challenge-images/19504/1458527812-479a74b99f-ScreenShot2016-03-21at8.06.05AM.png](https://s3.amazonaws.com/hr-challenge-images/19504/1458527812-479a74b99f-ScreenShot2016-03-21at8.06.05AM.png)

**Sample Output**

`90411 Joe`

**Explanation**

Hacker *86870* got a score of *30* for challenge *71055* with a difficulty level of *2*, so *86870* earned a full score for this challenge.

Hacker *90411* got a score of *30* for challenge *71055* with a difficulty level of *2*, so *90411* earned a full score for this challenge.

Hacker *90411* got a score of *100* for challenge *66730* with a difficulty level of *6*, so *90411* earned a full score for this challenge.

Only hacker *90411* managed to earn a full score for more than one challenge, so we print the their *hacker_id* and *name* as 2 space-separated values.

### Submissions

```sql
/*
1. select hacker_id, name from hackers h
2. join submissions s on h.hacker_id = s.hacker_id
2-1. join challenges c on s.challenge_id = c.challenge_id
2-2. join difficulty d on c.difficulty_level = d.difficulty_level
3. find full scores : where d.score = s.score
4. group by h.hacker_id, h.name
5. having count(distinct s.challenge_id) > 1
3. order by count(distinct s.challenge_id) desc
3-1. hacker_id asc
*/

SELECT  h.hacker_id
        ,h.name
  FROM  Hackers h
  JOIN  Submissions s
    ON  h.hacker_id = s.hacker_id
  JOIN  Challenges c
    ON  s.challenge_id = c.challenge_id
  JOIN  Difficulty d
    ON  c.difficulty_level = d.difficulty_level
 WHERE  d.score = s.score
 GROUP
    BY  h.hacker_id
        ,h.name
HAVING  COUNT(DISTINCT s.challenge_id) > 1
 ORDER
    BY  COUNT(DISTINCT s.challenge_id) DESC
        ,h.hacker_id ASC;
```