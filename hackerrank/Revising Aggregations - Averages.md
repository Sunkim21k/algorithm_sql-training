# Revising Aggregations - Averages

https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem?isFullScreen=false

### Problem

Query the average population of all cities in **CITY** where *District* is **California**.

**Input Format**

The **CITY** table is described as follows:

![https://s3.amazonaws.com/hr-challenge-images/8137/1449729804-f21d187d0f-CITY.jpg](https://s3.amazonaws.com/hr-challenge-images/8137/1449729804-f21d187d0f-CITY.jpg)

### Submissions

```sql
SELECT  AVG(POPULATION)
  FROM  CITY
 WHERE  DISTRICT = 'CALIFORNIA';
```