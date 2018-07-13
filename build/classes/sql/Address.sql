SELECT * FROM TAB;

--address
--address_seq (DESIMAL, PRIMARY KEY)
--zipcode
--province 경기도
--city 서울시, 안양시
--gugun 강남구, 가평군
--doro 백범로 15번길 
CREATE SEQUENCE address_seq START WITH 1000;
CREATE TABLE ADDRESS(
	address_seq DECIMAL PRIMARY KEY,
	zipcode VARCHAR2(20),
	province VARCHAR2(20),
	city VARCHAR2(20),
	gugun VARCHAR2(20),
	doro VARCHAR2(20)
);

INSERT INTO ADDRESS VALUES(
	address_seq.nextval,'07634','경기도','김포시','장기동','한강로 15길'
);
INSERT INTO ADDRESS VALUES(
	address_seq.nextval,'05674','강원도','횡성시','횡성구','횡성로 15길'
);
INSERT INTO ADDRESS VALUES(
	address_seq.nextval,'03347','경기도','고양시','일산동구','탄현로 15길'
);
INSERT INTO ADDRESS VALUES(
	address_seq.nextval,'45357','제주도','제주시','애월읍','일주서로'
);
INSERT INTO ADDRESS VALUES(
	address_seq.nextval,'08796','경상남도','고창군','거창읍','동동6길'
);
INSERT INTO ADDRESS VALUES(
	address_seq.nextval,'78712','대구광역시','남구','대명동','명덕로14길'
);
INSERT INTO ADDRESS VALUES(
	address_seq.nextval,'45393','강원도','강릉시','죽헌동','율곡로31길'
);
INSERT INTO ADDRESS VALUES(
	address_seq.nextval,'89621','부산광역시','연제구','연산동','중앙대로'
);
INSERT INTO ADDRESS VALUES(
	address_seq.nextval,'46456','광주광역시','동구','대인동','대인로 15길'
);
INSERT INTO ADDRESS VALUES(
	address_seq.nextval,'54332','전라남도','신안군','신안면','관저동로 6길'
);

SELECT * FROM ADDRESS;
