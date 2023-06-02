
-- 한 페이지에 10개 게시글 조회
SELECT *
FROM (
    SELECT ROWNUM no
          ,board_no
          ,writer
          ,content
          ,reg_date
          ,upd_date
          ,views
    FROM board
    ORDER BY reg_date DESC
) b
WHERE no <= 10
;

-- page : 2
-- 페이징 게시글 수 : 10
-- 가져올 데이터    : 11 ~ 20번 게시글
SELECT *
FROM (
    SELECT ROWNUM no
          ,board_no
          ,writer
          ,content
          ,reg_date
          ,upd_date
          ,views
    FROM board
    ORDER BY reg_date DESC
) b
WHERE no >= 11
  AND no <= 20
;

-- page : 3
-- 페이징 게시글 수 : 10
-- 가져올 데이터    : 21 ~ 30번 게시글
SELECT *
FROM (
    SELECT ROWNUM no
          ,board_no
          ,writer
          ,content
          ,reg_date
          ,upd_date
          ,views
    FROM board
    ORDER BY reg_date DESC
) b
WHERE no >= 21
  AND no <= 30
;

-- page : 4
-- 페이징 게시글 수 : 10
-- 가져올 데이터    : 31 ~ 40번 게시글
SELECT *
FROM (
    SELECT ROWNUM no
          ,board_no
          ,writer
          ,content
          ,reg_date
          ,upd_date
          ,views
    FROM board
    ORDER BY reg_date DESC
) b
WHERE no >= 31
  AND no <= 40
;

-- page : 5
-- 페이징 게시글 수 : 10
-- 가져올 데이터    : 41 ~ 50번 게시글
SELECT *
FROM (
    SELECT ROWNUM no
          ,board_no
          ,writer
          ,content
          ,reg_date
          ,upd_date
          ,views
    FROM board
    ORDER BY reg_date DESC
) b
WHERE no >= 41
  AND no <= 50
;







-- 페이징 처리 (일반화)
SELECT *
FROM (
    SELECT ROWNUM no
          ,board_no
          ,writer
          ,content
          ,reg_date
          ,upd_date
          ,views
    FROM board
    ORDER BY board_no DESC
) b
WHERE no > ((page-1) * count)  -- 시작 글번호  
  AND no <= (page * count)      -- 끝 글번호 
;
