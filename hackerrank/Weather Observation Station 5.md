# Weather Observation Station 5

https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=false

### Problem

Query the two cities in **STATION** with the shortest and longest *CITY* names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

The **STATION** table is described as follows:

![https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg](https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg)

where **LAT_N** is the northern latitude and **LONG_W** is the western longitude.

**Sample Input**

For example, **CITY** has four entries: **DEF, ABC, PQRS** and **WXY**.

**Sample Output**

`ABC 3
PQRS 4`

**Explanation**

When ordered alphabetically, the **CITY** names are listed as **ABC, DEF, PQRS,** and **WXY**, with lengths  and . The longest name is **PQRS**, but there are 3 options for shortest named city. Choose **ABC**, because it comes first alphabetically.

**Note**

You can write two separate queries to get the desired output. It need not be a single query.

### Submissions

```sql
/*
1. SELECT CITY, LENGTH(CITY) FROM STATION
2. WHERE LENGTH(CITY) = 
2-1. (SELECT  MIN or MAX(LENGTH(CITY)) FROM STATION)
3. ORDER BY CITY
4. LIMIT 1
*/

SELECT  CITY
        ,LENGTH(CITY)
  FROM  STATION
 WHERE  LENGTH(CITY) = (
                        SELECT  MIN(LENGTH(CITY))
                          FROM  STATION
                        )
 ORDER
    BY  CITY
 LIMIT  1;
 
 
SELECT  CITY
        ,LENGTH(CITY)
  FROM  STATION
 WHERE  LENGTH(CITY) = (
                        SELECT  MAX(LENGTH(CITY))
                          FROM  STATION
                        )
 ORDER
    BY  LENGTH(CITY)
 LIMIT  1;

```