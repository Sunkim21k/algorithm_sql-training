# SQL Project Planning

https://www.hackerrank.com/challenges/sql-projects/problem?isFullScreen=false

### Problem

You are given a table, *Projects*, containing three columns: *Task_ID*, *Start_Date* and *End_Date*. It is guaranteed that the difference between the *End_Date* and the *Start_Date* is equal to *1* day for each row in the table.

![https://s3.amazonaws.com/hr-challenge-images/12894/1443819551-639948acc0-1.png](https://s3.amazonaws.com/hr-challenge-images/12894/1443819551-639948acc0-1.png)

If the *End_Date* of the tasks are consecutive, then they are part of the same project. Samantha is interested in finding the total number of different projects completed.

Write a query to output the start and end dates of projects listed by the number of days it took to complete the project in ascending order. If there is more than one project that have the same number of completion days, then order by the start date of the project.

**Sample Input**

![https://s3.amazonaws.com/hr-challenge-images/12894/1443819440-1c40e943a1-2.png](https://s3.amazonaws.com/hr-challenge-images/12894/1443819440-1c40e943a1-2.png)

**Sample Output**

```
2015-10-28 2015-10-29
2015-10-30 2015-10-31
2015-10-13 2015-10-15
2015-10-01 2015-10-04

```

**Explanation**

The example describes following *four* projects:

- *Project 1*: Tasks *1*, *2* and *3* are completed on consecutive days, so these are part of the project. Thus start date of project is *2015-10-01* and end date is *2015-10-04*, so it took *3 days* to complete the project.
- *Project 2*: Tasks *4* and *5* are completed on consecutive days, so these are part of the project. Thus, the start date of project is *2015-10-13* and end date is *2015-10-15*, so it took *2 days* to complete the project.
- *Project 3*: Only task *6* is part of the project. Thus, the start date of project is *2015-10-28* and end date is *2015-10-29*, so it took *1 day* to complete the project.
- *Project 4*: Only task *7* is part of the project. Thus, the start date of project is *2015-10-30* and end date is *2015-10-31*, so it took *1 day* to complete the project.

### Submissions

```sql
/*
1. group : consecutive tasks
2. calc : start group date, end group date 
3. order by : 1) project day asc 2) start date asc
*/

WITH consecutive_tasks AS (
    SELECT  Task_ID
            ,Start_Date
            ,End_Date
            ,DATE_SUB(Start_Date, INTERVAL ROW_NUMBER() OVER (ORDER BY Start_Date) DAY) AS grp
    FROM 
        Projects
),
project_groups AS (
    SELECT  MIN(Start_Date) AS Project_Start
            ,MAX(End_Date) AS Project_End
            ,DATEDIFF(MAX(End_Date), MIN(Start_Date)) + 1 AS Duration
      FROM  consecutive_tasks
     GROUP 
        BY  grp
)

SELECT  Project_Start
        ,Project_End
  FROM  project_groups
 ORDER 
    BY  Duration ASC
        ,Project_Start ASC;

```

```sql
WITH ProjectGroups AS (
    SELECT
        Task_ID,
        Start_Date,
        End_Date,
        Start_Date - ROW_NUMBER() OVER (ORDER BY Start_Date) AS GroupID
    FROM
        Projects
),
GroupedProjects AS (
    SELECT
        MIN(Start_Date) AS Project_Start,
        MAX(End_Date) AS Project_End,
        MAX(End_Date) - MIN(Start_Date) + 1 AS Duration
    FROM
        ProjectGroups
    GROUP BY
        GroupID
)
SELECT
    Project_Start,
    Project_End
FROM
    GroupedProjects
ORDER BY
    Duration ASC,
    Project_Start ASC;
```
