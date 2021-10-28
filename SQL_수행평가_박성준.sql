--1.문제
DESC EMP;
--2.문제
select *
from emp
where DEPTNO = 30 and job='SALESMAN';
--3.문제
select*
from emp
where SAL BETWEEN 2000 and 3000;
--4.문제
CREATE TABLE EMP_TEMP(
EMPNO NUMBER(4),
ENAME VARCHAR2(10),
JOB VARCHAR2(9),
MGR NUMBER(4),
HIREDATE DATE,
SAL NUMBER(7,2),
COMM NUMBER(7,2),
DEPTNO NUMBER(2)
);

--CREATE TABLE EMP_TEMP1
--AS
--SELECT * FROM emp WHERE 1 <> 1;

SELECT
    *
FROM emp_temp;
--5.문제 홍길동 추가 empno = 9999, ename 홍길동 JOB PRESIDENT , MGR NULL,
--HIREDATE 2001.01.01 , SAL 5000, COMM 1000, DEPTNO 10
INSERT INTO emp_temp
VALUES (9999,
'홍길동',
'PRESIDENT',
NULL,
'01/01/01',
 5000,
 1000,
10
);
SELECT
    *
FROM emp_temp;
--6.문제 DEPT 테이블 복사 후 DEPT_TEMP2 테이블 생성
CREATE TABLE DEPT_TEMP2 AS
SELECT
    *
FROM dept;
SELECT
    *
FROM dept_temp2;
--7.40번 부서의 부서이름 DATABASE , 지역을 SEOUL 수정
UPDATE dept_temp2
SET DNAME = 'DATABASE' ,
LOC = 'SEOUL'
WHERE DEPTNO = 40;
SELECT
    *
FROM dept_temp2;
--8.문제
ROLLBACK;
--9.문제 EMP 에서 ENAME 대소문자 구분 없이 SMITH인 사원 조회
SELECT
    *
FROM EMP
WHERE ENAME = UPPER('SmItH');
--where upper(ename)='smith';
--10.문제 ENAME <=4글자 조회
SELECT
    *
FROM EMP
WHERE ENAME LIKE '____'; 
--length(ename)<=4;
--11.문제 JOB이름 첫글자 부터 세개만 출력
SELECT 
SUBSTR (job,1,3)
FROM EMP ;
--12.문제 HIREDATE > 1981/06/01 IN EMP TABLE
SELECT 
*
FROM EMP 
WHERE hiredate > '81.06.01';
--where hiredate > to_date('1981/06/01', 'yyyy/mm/dd')
--13.문제 NVL함수 사용 , EMPNO,ENAME,SAL,COMM, 1년치 연봉 구해서 ANNSAL 열로 출력
SELECT 
EMPNO 사원번호, ENAME 사원이름, SAL 월급, NVL(COMM,0) 추가수당,
sal*12 + sal*12*NVL(comm, 0) ANNSAL
--sal*12+nvl(comm,0)
FROM EMP ;

--14.문제 중복제외 JOB 숫자 
SELECT
    COUNT(DISTINCT JOB)
FROM EMP;
--15.문제 EMP와 DEPT 테이블에서 월급 SAL >= 3000인 사원들의 이름, 부서이름
SELECT E.ENAME 사원이름,D.DNAME 부서이름
FROM EMP E
JOIN dept D
ON E.DEPTNO=D.DEPTNO
WHERE SAL >=3000;

--16.문제 MARTIN보다 급여가 낮은 사원 정보를 출력
SELECT
    *
FROM EMP
WHERE SAL <(SELECT SAL FROM EMP WHERE ENAME ='MARTIN');

--17.문제 EMP테이블에서 30번 부서 사원들의 최대 급여보다 많은 급여를 받는 사원정보를 출력하는 문
SELECT
    *
FROM EMP
WHERE SAL > ALL(SELECT MAX(SAL) FROM EMP WHERE deptno = 30);

--18.문제 EMP,SALGRADE 테이블을 비동등 조인 
--, 급여등급이 3등급이고 30번부서 소속인 사원들 출력
SELECT
    *
FROM EMP E
JOIN salgrade S
ON SAL BETWEEN S.LOSAL AND S.HISAL
WHERE E.deptno = 30 AND S.GRADE=3;
--19.문제 CREATE 사용 > EMP_DDL테이블 생성 
CREATE TABLE EMP_DDL(
EMPNO NUMBER(4),
ENAME VARCHAR2(10),
JOB VARCHAR2(9),
MGR NUMBER(4),
HIREDATE DATE,
SAL NUMBER(7,2),
COMM NUMBER(7,2),
DEPTNO NUMBER(2)
);
DESC EMP_DDL;
--20.EMP테이블로 가상의 테이블인 EMP_V3뷰 테이블을 생성하는 SQL문
-- EMPNO 직원번호 ,ENAME 이름, JOB 직업, HIREDATE 고용일자, SAL 월급, DEPTNO 부서번호
