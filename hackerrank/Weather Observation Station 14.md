# Weather Observation Station 14

https://www.hackerrank.com/challenges/weather-observation-station-14/problem?isFullScreen=false

### Problem

Query the greatest value of the *Northern Latitudes* (*LAT_N*) from **STATION** that is less than `137.2345`. Truncate your answer to `4` decimal places.

**Input Format**

The **STATION** table is described as follows:

![https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg](https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg)

where *LAT_N* is the northern latitude and *LONG_W* is the western longitude.

### Submissions

```sql
SELECT  ROUND(MAX(LAT_N),4)
  FROM  STATION
 WHERE  LAT_N < 137.2345;
```