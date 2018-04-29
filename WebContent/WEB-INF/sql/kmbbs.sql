--테이블 생성
CREATE TABLE kmbbs(
	num			INT				NOT NULL AUTO_INCREMENT PRIMARY KEY,   
	name		VARCHAR(10)		NOT NULL, 								-- 글쓴이성명
	subject		VARCHAR(100)	NOT NULL, 							    -- 제목
	content		VARCHAR(4000)	NOT NULL, 								-- 내용
	ref			INT				NOT NULL, 								-- 부모글 번호(그룹번호)
	indent 		INT				DEFAULT 0 NOT NULL, 					-- 답변여부, 깊이
	ansnum		INT				DEFAULT 0 NOT NULL, 					-- 답변 순서
	regdate		DATE			NOT NULL, 								-- 글 등록일
	passwd		VARCHAR(15)		NOT NULL, 								--  패스워드
	count		INT				DEFAULT 0 NOT NULL, 					-- 조회수
	ip			VARCHAR(15)		NOT NULL, 								-- 글쓴이 IP
	filename	VARCHAR(50)		NULL, 									-- 대표사진 파일명
	filesize	INT				NULL, 									-- 파일 사이즈
	refnum		INT				DEFAULT 0			 					-- 답변확인 컬럼
)ENGINE=MyISAM DEFAULT CHARSET="utf8";     
--테이블 삭제
DROP TABLE board;

--삽입
INSERT INTO kmbbs(name, subject, content, ref, indent, ansnum, regdate, passwd, count, ip, filename, filesize, refnum) 
VALUES('금명기어', '치연마', '치연마입니다', '1', '0', '0', curdate(), '', '0', '127.0.0.1', 'default.jpg', '0', '0', '치연마' ); 
INSERT INTO kmbbs(name, subject, content, ref, indent, ansnum, regdate, passwd, count, ip, filename, filesize, refnum)
VALUES('금명기어', '챔퍼링라운드', '챔퍼링라운드입니다', '2', '0', '0', curdate(), '', '0', '127.0.0.1', 'default.jpg', '0', '0', '챔퍼링라운드' ); 
INSERT INTO kmbbs(name, subject, content, ref, indent, ansnum, regdate, passwd, count, ip, filename, filesize, refnum)
VALUES('금명기어', '챔퍼링앵글', '챔퍼링앵글입니다', '3', '0', '0', curdate(), '', '0', '127.0.0.1', 'default.jpg', '0', '0', '챔퍼링앵글'); 
INSERT INTO kmbbs(name, subject, content, ref, indent, ansnum, regdate, passwd, count, ip, filename, filesize, refnum)
VALUES('금명기어', '치절스퍼', '치절스퍼입니다', '4', '0', '0', curdate(), '', '0', '127.0.0.1', 'default.jpg', '0', '0', '치절스퍼' ); 
INSERT INTO kmbbs(name, subject, content, ref, indent, ansnum, regdate, passwd, count, ip, filename, filesize, refnum) 
VALUES('금명기어', '치절헬리컬', '치절헬리컬입니다', '5', '0', '0', curdate(), '', '0', '127.0.0.1', 'default.jpg', '0', '0', '치절헬리컬' ); 
INSERT INTO kmbbs(name, subject, content, ref, indent, ansnum, regdate, passwd, count, ip, filename, filesize, refnum)
VALUES('금명기어', '치절체인', '치절체인입니다', '6', '0', '0', curdate(), '', '0', '127.0.0.1', 'default.jpg', '0', '0', '치절체인' ); 
INSERT INTO kmbbs(name, subject, content, ref, indent, ansnum, regdate, passwd, count, ip, filename, filesize, refnum)
VALUES('금명기어', '치절랙크', '치절랙크입니다', '7', '0', '0', curdate(), '', '0', '127.0.0.1', 'default.jpg', '0', '0', '치절랙크' ); 
INSERT INTO kmbbs(name, subject, content, ref, indent, ansnum, regdate, passwd, count, ip, filename, filesize, refnum) 
VALUES('금명기어', '치절인벌류트', '치절인벌류트입니다', '8', '0', '0', curdate(), '', '0', '127.0.0.1', 'default.jpg', '0', '0', '치절인벌류트' ); 
INSERT INTO kmbbs(name, subject, content, ref, indent, ansnum, regdate, passwd, count, ip, filename, filesize, refnum)
VALUES('금명기어', '치절내치', '치절내치입니다', '9', '0', '0', curdate(), '', '0', '127.0.0.1', 'default.jpg', '0', '0', '치절내치' ); 
INSERT INTO kmbbs(name, subject, content, ref, indent, ansnum, regdate, passwd, count, ip, filename, filesize, refnum)
VALUES('금명기어', '치절웜', '치절웜입니다', '10', '0', '0', curdate(), '', '0', '127.0.0.1', 'default.jpg', '0', '0', '치절웜' ); 

--전체 읽기
SELECT * FROM kmbbs;
--ROWNUM으로 읽기(필요 X)
SELECT A.num, name, A.subject, A.content, A.ref, indent, 
A.ansnum, regdate, passwd, count, ip, filename, filesize, refnum
FROM  (
    SELECT @ROWNUM := @ROWNUM + 1 AS ROWNUM,
        kmbbs.num, name, kmbbs.subject, kmbbs.content, kmbbs.ref, indent, kmbbs.ansnum, regdate, passwd, count, ip, filename, filesize, refnum 
    FROM kmbbs,
       (SELECT @ROWNUM := 0
       ) R
    ) A
WHERE A.ROWNUM >= 1 AND A.ROWNUM <= 5
    AND A.subject LIKE '%'
    OR A.content LIKE '%'
ORDER BY A.ref DESC, A.ansnum ASC

--Limit 이용한 목록 읽기
SELECT
    num, name, subject, content, ref, indent, ansnum, regdate, passwd, count, ip, filename, filesize, refnum
FROM
	kmbbs
ORDER BY ref DESC, ansnum ASC
LIMIT 5,5

--랜덤으로 읽어오기
select * from kmbbs order by rand() limit 6;

-- 삭제
DELETE FROM kmbbs;

