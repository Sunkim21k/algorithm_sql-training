# Weather Observation Station 8

https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=false

### Problem

Query the list of *CITY* names from **STATION** which have vowels (i.e., *a*, *e*, *i*, *o*, and *u*) as both their first *and* last characters. Your result cannot contain duplicates.

**Input Format**

The **STATION** table is described as follows:

![https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg](https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg)

where *LAT_N* is the northern latitude and *LONG_W* is the western longitude.

### Submissions

```sql
/*
1. SELECT CITY FROM STATION
2. WHERE CITY IN vowels as both first and last characters
3. cannot contain duplicates
*/

SELECT  DISTINCT CITY
  FROM  STATION
 WHERE  LEFT(CITY,1) IN ('a','e','i','o','u')
   AND  RIGHT(CITY,1) IN ('a','e','i','o','u');
```