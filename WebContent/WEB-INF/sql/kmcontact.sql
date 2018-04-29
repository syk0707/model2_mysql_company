
--테이블 생성
CREATE TABLE kmcontact(
	num			INT				NOT NULL AUTO_INCREMENT PRIMARY KEY,   
	name		VARCHAR(50)		NOT NULL, 								-- 글쓴이 IP
	email		VARCHAR(100)	NOT NULL, 								-- 내용
	content		VARCHAR(4000)	DEFAULT 0 NULL,		 					-- 답변확인 컬럼
	regdate		DATE			NOT NULL, 								-- 글 등록일
	ip			VARCHAR(15)		DEFAULT 0 NULL							-- 글쓴이 IP
)ENGINE=MyISAM DEFAULT CHARSET="utf8";

DROP TABLE kmcontact;

--삽입
INSERT INTO kmcontact(name, email, content, regdate) 
VALUES('관리자', 'admin@admin.com', '본문입니다', curdate()); 

SELECT * FROM kmcontact;

--목록
SELECT
    num, name, email, regdate  
FROM
	kmcontact
ORDER BY num DESC
LIMIT 0,5

--상세목록
SELECT
    num, name, email, content, ip, regdate
FROM
	kmcontact
WHERE num = 1;
	
--삭제
DELETE FROM kmcontact
WHERE num = 1;	