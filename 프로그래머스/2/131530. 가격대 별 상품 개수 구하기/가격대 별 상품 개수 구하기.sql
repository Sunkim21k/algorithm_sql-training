-- 코드를 입력하세요
SELECT  
    CASE
        WHEN PRICE BETWEEN 10000 AND 19999 THEN 10000
        WHEN PRICE BETWEEN 20000 AND 29999 THEN 20000
        WHEN PRICE BETWEEN 30000 AND 39999 THEN 30000
        WHEN PRICE BETWEEN 40000 AND 49999 THEN 40000
        WHEN PRICE BETWEEN 50000 AND 59999 THEN 50000
        WHEN PRICE BETWEEN 60000 AND 69999 THEN 60000
        WHEN PRICE BETWEEN 70000 AND 79999 THEN 70000
        WHEN PRICE BETWEEN 80000 AND 89999 THEN 80000
        WHEN PRICE BETWEEN 90000 AND 99999 THEN 90000
        ELSE 0        
    END AS PRICE_GROUP
        ,COUNT(*) AS PRODUCTS
  FROM  PRODUCT
 GROUP
    BY  PRICE_GROUP
 ORDER
    BY  PRICE_GROUP ASC;