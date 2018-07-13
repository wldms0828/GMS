SELECT * FROM TAB;

--member
--userid,password,name,regidate,
--ssn,address_seq,phone,email,profile,access_num,credit_rating,account_seq

CREATE TABLE MEMBER(
	userid VARCHAR2(20) CONSTRAINT member_pk_userid PRIMARY KEY,
	password VARCHAR2(20),
	name VARCHAR2(20),
	ssn VARCHAR2(20),
	regidate DATE,
	phone VARCHAR2(20),
	email VARCHAR2(20),
	profile VARCHAR2(20),
	access_num VARCHAR2(20),
	credit_rating DECIMAL,
	address_seq DECIMAL,
	account_seq DECIMAL
);
ALTER TABLE MEMBER ADD CONSTRAINT address_fk_address_seq
	FOREIGN KEY (address_seq) REFERENCES address(address_seq);
ALTER TABLE MEMBER ADD CONSTRAINT account_fk_account_seq
	FOREIGN KEY (account_seq) REFERENCES account(account_seq);
-- userid,password,name,ssn,regidate,phone,email,profile,access_num,credit_rating,address_seq,account_seq
INSERT INTO MEMBER (
	userid,password,name,ssn,regidate,
	phone,email,profile,access_num,credit_rating,
	address_seq,account_seq
)
VALUES(
	'hong','8','홍길동','930828-2',SYSDATE,
	'010-1234-5678','gildong@naver.com','hong.jpg','',5,
	1000,1000
);
INSERT INTO MEMBER (
	userid,password,name,ssn,regidate,
	phone,email,profile,access_num,credit_rating,
	address_seq,account_seq
)
VALUES(
	'lee','2','이순신','880107-1',SYSDATE,
	'010-4567-7890','sunshin@naver.com','lee.jpg','',5,
	1001,1001
);
INSERT INTO MEMBER (
	userid,password,name,ssn,regidate,
	phone,email,profile,access_num,credit_rating,
	address_seq,account_seq
)
VALUES(
	'kim','1','김유신','910912-1',SYSDATE,
	'010-9666-8878','ushin@naver.com','kim.jpg','',5,
	1002,1002
);
INSERT INTO MEMBER (
	userid,password,name,ssn,regidate,
	phone,email,profile,access_num,credit_rating,
	address_seq,account_seq
)
VALUES(
	'kim1','3','김지은','930728-2',SYSDATE,
	'010-8858-7757','jieun@naver.com','kim.jpg','',5,
	1003,1003
);
INSERT INTO MEMBER (
	userid,password,name,ssn,regidate,
	phone,email,profile,access_num,credit_rating,
	address_seq,account_seq
)
VALUES(
	'yang','5','양하지','920107-2',SYSDATE,
	'010-7785-1145','haji@naver.com','yang.jpg','',5,
	1004,1004
);
INSERT INTO MEMBER (
	userid,password,name,ssn,regidate,
	phone,email,profile,access_num,credit_rating,
	address_seq,account_seq
)
VALUES(
	'gang','2','강감찬','851120-1',SYSDATE,
	'010-7893-4454','gamchan@naver.com','gang.jpg','',5,
	1005,1005
);
INSERT INTO MEMBER (
	userid,password,name,ssn,regidate,
	phone,email,profile,access_num,credit_rating,
	address_seq,account_seq
)
VALUES(
	'ki','17','기성용','900114-1',SYSDATE,
	'010-1717-7777','sungyoung@naver.com','ki.jpg','',5,
	1006,1006
);
INSERT INTO MEMBER (
	userid,password,name,ssn,regidate,
	phone,email,profile,access_num,credit_rating,
	address_seq,account_seq
)
VALUES(
	'son','7','손흥민','9241008-1',SYSDATE,
	'010-7767-1121','son@naver.com','son.jpg','',5,
	1007,1007
);
INSERT INTO MEMBER (
	userid,password,name,ssn,regidate,
	phone,email,profile,access_num,credit_rating,
	address_seq,account_seq
)
VALUES(
	'lee1','2','이용','870107-1',SYSDATE,
	'010-2262-7789','yoeung@naver.com','yoeung.jpg','',5,
	1008,1008
);
INSERT INTO MEMBER (
	userid,password,name,ssn,regidate,
	phone,email,profile,access_num,credit_rating,
	address_seq,account_seq
)
VALUES(
	'ji','4','지소연','890403-2',SYSDATE,
	'010-9886-7554','soyeon@naver.com','ji.jpg','',5,
	1009,1009
);
-- 조인 join
SELECT userid, name, account_num, city
FROM MEMBER m, ACCOUNT a,address ad
WHERE m.account_seq  = a.account_seq
AND m.address_seq = ad.address_seq
AND m.userid = 'hong'
;
SELECT * 
FROM MEMBER, ACCOUNT
WHERE member.account_seq  = account.account_seq
AND member.userid = 'lee'
;

SELECT*FROM MEMBER;