# Weather Observation Station 10

https://www.hackerrank.com/challenges/weather-observation-station-10/problem?isFullScreen=false

### Problem

Query the list of *CITY* names from **STATION** that *do not end* with vowels. Your result cannot contain duplicates.

**Input Format**

The **STATION** table is described as follows:

![https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg](https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg)

where *LAT_N* is the northern latitude and *LONG_W* is the western longitude.

### Submissions

```sql
SELECT  DISTINCT CITY
  FROM  STATION
 WHERE  CITY NOT LIKE '%a'
   AND  CITY NOT LIKE '%e'
   AND  CITY NOT LIKE '%i'
   AND  CITY NOT LIKE '%o'
   AND  CITY NOT LIKE '%u';
```