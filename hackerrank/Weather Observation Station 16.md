# Weather Observation Station 16

https://www.hackerrank.com/challenges/weather-observation-station-16/problem?isFullScreen=false

### Problem

Query the smallest *Northern Latitude* (*LAT_N*) from **STATION** that is greater than . Round your answer to  decimal places.

**Input Format**

The **STATION** table is described as follows:

![https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg](https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg)

where *LAT_N* is the northern latitude and *LONG_W* is the western longitude.

### Submissions

```sql
SELECT  ROUND(MIN(LAT_N),4)
  FROM  STATION
 WHERE  LAT_N > 38.7780;
```