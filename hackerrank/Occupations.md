# Occupations

https://www.hackerrank.com/challenges/occupations/problem?isFullScreen=true

### Problem

[Pivot](https://en.wikipedia.org/wiki/Pivot_table) the *Occupation* column in **OCCUPATIONS** so that each *Name* is sorted alphabetically and displayed underneath its corresponding *Occupation*. The output should consist of four columns (*Doctor*, *Professor*, *Singer*, and *Actor*) in that specific order, with their respective names listed alphabetically under each column.

**Note:** Print **NULL** when there are no more names corresponding to an occupation.

**Input Format**

The **OCCUPATIONS** table is described as follows:

![https://s3.amazonaws.com/hr-challenge-images/12889/1443816414-2a465532e7-1.png](https://s3.amazonaws.com/hr-challenge-images/12889/1443816414-2a465532e7-1.png)

*Occupation* will only contain one of the following values: **Doctor**, **Professor**, **Singer** or **Actor**.

**Sample Input**

![https://s3.amazonaws.com/hr-challenge-images/12890/1443817648-1b2b8add45-2.png](https://s3.amazonaws.com/hr-challenge-images/12890/1443817648-1b2b8add45-2.png)

**Sample Output**

`Jenny    Ashley     Meera  Jane
Samantha Christeen  Priya  Julia
NULL     Ketty      NULL   Maria`

**Explanation**

The first column is an alphabetically ordered list of Doctor names.

The second column is an alphabetically ordered list of Professor names.

The third column is an alphabetically ordered list of Singer names.

The fourth column is an alphabetically ordered list of Actor names.

The empty cell data for columns with less than the maximum number of names per occupation (in this case, the Professor and Actor columns) are filled with **NULL** values.

### Submissions

```sql
/*
 1. partition occupation
 2. pivot doctor, professor, singer, actor
 3. no more names : print null 
*/

WITH Occupations_rn AS (
    SELECT
        NAME,
        OCCUPATION,
        ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME) AS rn
    FROM
        OCCUPATIONS
)
SELECT
    MAX(CASE WHEN OCCUPATION = 'Doctor' THEN NAME END) AS Doctor,
    MAX(CASE WHEN OCCUPATION = 'Professor' THEN NAME END) AS Professor,
    MAX(CASE WHEN OCCUPATION = 'Singer' THEN NAME END) AS Singer,
    MAX(CASE WHEN OCCUPATION = 'Actor' THEN NAME END) AS Actor
FROM
    Occupations_rn
GROUP BY
    rn
ORDER BY
    rn
```