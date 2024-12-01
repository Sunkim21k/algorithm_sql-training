# Average Population of Each Continent

https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=false

### Problem

Given the **CITY** and **COUNTRY** tables, query the names of all the continents (*COUNTRY.Continent*) and their respective average city populations (*CITY.Population*) rounded *down* to the nearest integer.

**Note:** *CITY.CountryCode* and *COUNTRY.Code* are matching key columns.

**Input Format**

The **CITY** and **COUNTRY** tables are described as follows:

![https://s3.amazonaws.com/hr-challenge-images/8137/1449729804-f21d187d0f-CITY.jpg](https://s3.amazonaws.com/hr-challenge-images/8137/1449729804-f21d187d0f-CITY.jpg)

![https://s3.amazonaws.com/hr-challenge-images/8342/1449769013-e54ce90480-Country.jpg](https://s3.amazonaws.com/hr-challenge-images/8342/1449769013-e54ce90480-Country.jpg)

### Submissions

```sql
/*
1. SELECT CONTINENTS NAME(CONTINENT) AND ROUND DOWN AVG(POPULATION)
2. JOIN CITY.COUNTRYCODE AND COUNTRY.CODE
3. GROUP BY CONTINENT
*/

SELECT  CONTINENT
        ,TRUNCATE(AVG(CITY.POPULATION),0)
  FROM  CITY
 INNER
  JOIN  COUNTRY
    ON  CITY.COUNTRYCODE = COUNTRY.CODE
 GROUP
    BY  CONTINENT;
```