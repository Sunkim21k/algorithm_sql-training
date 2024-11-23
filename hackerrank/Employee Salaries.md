# Employee Salaries

https://www.hackerrank.com/challenges/salary-of-employees/problem?isFullScreen=false

### Problem

Write a query that prints a list of employee names (i.e.: the *name* attribute) for employees in **Employee** having a salary greater than  per month who have been employees for less than  months. Sort your result by ascending *employee_id*.

**Input Format**

The **Employee** table containing employee data for a company is described as follows:

![https://s3.amazonaws.com/hr-challenge-images/19629/1458557872-4396838885-ScreenShot2016-03-21at4.27.13PM.png](https://s3.amazonaws.com/hr-challenge-images/19629/1458557872-4396838885-ScreenShot2016-03-21at4.27.13PM.png)

where *employee_id* is an employee's ID number, *name* is their name, *months* is the total number of months they've been working for the company, and *salary* is the their monthly salary.

**Sample Input**

![https://s3.amazonaws.com/hr-challenge-images/19630/1458558612-af3da3ceb7-ScreenShot2016-03-21at4.32.59PM.png](https://s3.amazonaws.com/hr-challenge-images/19630/1458558612-af3da3ceb7-ScreenShot2016-03-21at4.32.59PM.png)

**Sample Output**

`Angela
Michael
Todd
Joe`

**Explanation**

*Angela* has been an employee for  month and earns  per month.

*Michael* has been an employee for  months and earns  per month.

*Todd* has been an employee for  months and earns  per month.

*Joe* has been an employee for  months and earns  per month.

We order our output by ascending *employee_id*.

### Submissions

```sql
SELECT  NAME
  FROM  EMPLOYEE
 WHERE  SALARY >= 2000 AND MONTHS < 10
 ORDER
    BY  EMPLOYEE_ID ASC; 
```