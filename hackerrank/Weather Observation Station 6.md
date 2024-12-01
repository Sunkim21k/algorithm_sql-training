# Weather Observation Station 6

https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=false

### Problem

Query the list of *CITY* names starting with vowels (i.e., `a`, `e`, `i`, `o`, or `u`) from **STATION**. Your result *cannot* contain duplicates.

**Input Format**

The **STATION** table is described as follows:

![https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg](https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg)

where *LAT_N* is the northern latitude and *LONG_W* is the western longitude.

### Submissions

```sql
/*
1. SELECT CITY FROM STATION
2. WHERE LEFT(CITY, 1) IN ('a','e','i','o','u')
3. cannot contain duplicates
*/

SELECT  DISTINCT CITY
  FROM  STATION
 WHERE  LEFT(CITY, 1) IN ('a','e','i','o','u');
```