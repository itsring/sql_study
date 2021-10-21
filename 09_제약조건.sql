--제약조건
--NOT NULL : 넑밧은 입력안됨
desc departments;

--UK 유니크 : 중복되지 않는다.
--EMP_NAME 은 NOT NULL제약조건, EMAIL은 유니크 제약조건
create table emp1(
eno number(3),
emp_name varchar2(20) constraint emp1_ename_nn NOT NULL,
email varchar2(30),
constraint emp1_email_uk unique (email)
);
--데이터 입력
INSERT INTO EMP1 VALUES(208,'KIM', 'KJS@NAMER.COM');
INSERT INTO EMP1 VALUES(209,  , NULL);--NULL값을입력할 수 없어서 에러 발생
INSERT INTO EMP1 VALUES(210,'LEE', 'KJS@NAMER.COM');--UNIQUE 제약조건을 어ㄱ서 오류
--CHECK 제약조건
create table emp2(
eno number(3),
emp_name varchar2(20),
SAL NUMBER(10),
constraint emp2_SAL_CHECK CHECK (SAL > 1000)
);
INSERT INTO EMP2 VALUES(208,'KIM', 1200);
INSERT INTO EMP2 VALUES(209,'LEE', 900);
