# Write your MySQL query statement below
/*
 1. 각 단어의 첫 글자를 대문자, 나머지 소문자로 변환
 2. 하이픈(-)으로 연결된 단어 첫 글자 모두 대문자로 변환
 */
 
 WITH RECURSIVE split_words AS (
    -- 1. 첫 번째 단어 추출
    SELECT 
        content_id,
        content_text AS original_text,
        LOWER(content_text) AS lowered_text,
        SUBSTRING_INDEX(content_text, ' ', 1) AS word,
        SUBSTRING(content_text, LENGTH(SUBSTRING_INDEX(content_text, ' ', 1)) + 2) AS remaining_text
    FROM user_content
    UNION ALL
    -- 2. 나머지 단어 추출 (재귀적으로 반복)
    SELECT 
        content_id,
        original_text,
        lowered_text,
        SUBSTRING_INDEX(remaining_text, ' ', 1) AS word,
        SUBSTRING(remaining_text, LENGTH(SUBSTRING_INDEX(remaining_text, ' ', 1)) + 2) 
    FROM split_words
    WHERE remaining_text <> ''
), capitalized_words AS (
    -- 3. 하이픈 포함 단어와 일반 단어 처리
    SELECT 
        content_id, 
        original_text,
        CASE 
            -- 하이픈이 포함된 단어 처리 (하이픈 앞뒤 단어 변환)
            WHEN word LIKE '%-%' THEN 
                CONCAT(
                    UPPER(LEFT(SUBSTRING_INDEX(word, '-', 1), 1)), 
                    LOWER(SUBSTRING(SUBSTRING_INDEX(word, '-', 1), 2)),
                    '-',
                    UPPER(LEFT(SUBSTRING_INDEX(word, '-', -1), 1)), 
                    LOWER(SUBSTRING(SUBSTRING_INDEX(word, '-', -1), 2))
                )
            -- 일반 단어 처리 (첫 글자만 대문자로 변환)
            ELSE 
                CONCAT(UPPER(LEFT(word, 1)), LOWER(SUBSTRING(word, 2)))
        END AS capitalized_word
    FROM split_words
), grouped_words AS (
    -- 4. 변환된 단어들을 다시 조합
    SELECT 
        content_id, 
        original_text, 
        GROUP_CONCAT(capitalized_word SEPARATOR ' ') AS converted_text
    FROM capitalized_words
    GROUP BY content_id, original_text
)
SELECT * FROM grouped_words;

