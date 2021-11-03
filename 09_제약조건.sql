--제약조건
--NOT NULL : 넑밧은 입력안됨
desc departments;
SELECT
    *
FROM emp;
drop table members;
--UK 유니크 : 중복되지 않는다.
--EMP_NAME 은 NOT NULL제약조건, EMAIL은 유니크 제약조건
create table emp1(
eno number(3),
emp_name varchar2(20) constraint emp1_ename_nn NOT NULL, -- not null 제약은 컬럼레벨 정의만 가능
email varchar2(30),
constraint emp1_email_uk unique (email)
);
--데이터 입력
INSERT INTO EMP1 VALUES(208,'KIM', 'KJS@NAMER.COM');
INSERT INTO EMP1 VALUES(209,  , NULL);--NULL값을입력할 수 없어서 에러 발생
INSERT INTO EMP1 VALUES(210,'LEE', 'KJS@NAMER.COM');--UNIQUE 제약조건을 어겨서 오류
--CHECK 제약조건
create table emp2(
eno number(3),
emp_name varchar2(20),
SAL NUMBER(10),
constraint emp2_SAL_CHECK CHECK (SAL > 1000)
);
INSERT INTO EMP2 VALUES(208,'KIM', 1200);
INSERT INTO EMP2 VALUES(209,'LEE', 900);

--제약조건 이름없이 테이블 생성
DROP TABLE EMP;
CREATE TABLE EMP(
ENO NUMBER(4) PRIMARY KEY,
ENAME VARCHAR2(20) NOT NULL,
GNO VARCHAR2 (13) UNIQUE CHECK (LENGTH(GNO)>=8),
GENDER VARCHAR2(5) CHECK(GENDER IN ('WOMAN','MAN'))
);

INSERT INTO EMP VALUES(1,'KIM','12345678','MAN');
INSERT INTO EMP VALUES(2,'LEE','123456789','WOMAN');

--예제
CREATE TABLE MEMBERS(
MEMBER_ID NUMBER(2) PRIMARY KEY,
FIRST_NAME VARCHAR2(50) NOT NULL,
LAST_NAME VARCHAR2(50) NOT NULL,
GENDER VARCHAR2 (5) CHECK(GENDER IN('WOMAN','MAN')),
BIRTH_DAY DATE,
EMAIL VARCHAR2(200) UNIQUE NOT NULL
);
DESC MEMBERS;
