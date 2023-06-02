
-- 연관 검색어 - 상위 10개 조회
SELECT *
FROM (
    SELECT ROWNUM NO
          ,board_no
          ,writer
          ,CONTENT
          ,REG_date
          ,upd_date
          ,views
    FROM board
    WHERE title LIKE '%검색어%'
    ORDER BY views DESC
            ,reg_date DESC
) b
WHERE no <= 10
;