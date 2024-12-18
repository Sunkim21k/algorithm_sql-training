-- 코드를 입력하세요
SELECT  USER_ID
        ,PRODUCT_ID
  FROM  
    (SELECT  COUNT(*) AS CT
             ,USER_ID
             ,PRODUCT_ID
       FROM  ONLINE_SALE
      GROUP
         BY  USER_ID
             ,PRODUCT_ID) SALE
 WHERE  CT >= 2
 ORDER
    BY  USER_ID ASC
        ,PRODUCT_ID DESC;
