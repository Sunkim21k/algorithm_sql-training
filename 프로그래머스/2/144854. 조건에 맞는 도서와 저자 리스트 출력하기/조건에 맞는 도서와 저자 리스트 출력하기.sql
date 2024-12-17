-- 코드를 입력하세요
SELECT  B.BOOK_ID
        ,A.AUTHOR_NAME
        ,DATE_FORMAT(B.PUBLISHED_DATE,'%Y-%m-%d')
  FROM  BOOK AS B
  LEFT
  JOIN  AUTHOR AS A
    ON  B.AUTHOR_ID = A.AUTHOR_ID
 WHERE  B.CATEGORY LIKE '경제'
 ORDER
    BY  B.PUBLISHED_DATE ASC;