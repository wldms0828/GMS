SELECT * FROM TAB;

--account
--money,account_seq,account_type,create_date,account_num,limit
CREATE SEQUENCE account_seq START WITH 1000;
CREATE TABLE ACCOUNT(
	account_seq DECIMAL PRIMARY KEY,
	money DECIMAL,
	account_type VARCHAR2(20),
	account_num VARCHAR2(20),
	create_date DATE,
	limit DECIMAL
);

INSERT INTO account(
	account_seq,money,account_type,account_num,create_date,limit
) 
VALUES(
	account_seq.nextval, 0, '일반통장', '123-456-789', SYSDATE, 0
);
INSERT INTO account(
	account_seq,money,account_type,account_num,create_date,limit
) 
VALUES(
	account_seq.nextval, 1000, '일반통장', '789-655-110', SYSDATE, 0
);
INSERT INTO account(
	account_seq,money,account_type,account_num,create_date,limit
) 
VALUES(
	account_seq.nextval, 1500, '일반통장', '646-878-746', SYSDATE, 0
);INSERT INTO account(
	account_seq,money,account_type,account_num,create_date,limit
) 
VALUES(
	account_seq.nextval, 2000, '일반통장', '789-655-554', SYSDATE, 0
);INSERT INTO account(
	account_seq,money,account_type,account_num,create_date,limit
) 
VALUES(
	account_seq.nextval, 2500, '일반통장', '757-655-110', SYSDATE, 0
);INSERT INTO account(
	account_seq,money,account_type,account_num,create_date,limit
) 
VALUES(
	account_seq.nextval, 3000, '일반통장', '556-112-724', SYSDATE, 0
);INSERT INTO account(
	account_seq,money,account_type,account_num,create_date,limit
) 
VALUES(
	account_seq.nextval, 3500, '일반통장', '665-441-111', SYSDATE, 0
);INSERT INTO account(
	account_seq,money,account_type,account_num,create_date,limit
) 
VALUES(
	account_seq.nextval, 4000, '일반통장', '143-543-119', SYSDATE, 0
);INSERT INTO account(
	account_seq,money,account_type,account_num,create_date,limit
) 
VALUES(
	account_seq.nextval, 4500, '일반통장', '794-685-541', SYSDATE, 0
);INSERT INTO account(
	account_seq,money,account_type,account_num,create_date,limit
) 
VALUES(
	account_seq.nextval, 5000, '일반통장', '879-544-114', SYSDATE, 0
);

SELECT * FROM account;


