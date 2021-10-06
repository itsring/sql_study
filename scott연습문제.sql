--1
SELECT
    empno, ename, sal
FROM emp
where deptno= 10;
--2
select ename, hiredate, deptno
from emp
where empno = 7369;
--3
select *
from emp
where ename='ALLEN';
--4
select ename, deptno, SAL
from emp
WHERE HIREDATE='1981-02-20';
--5
select *
from emp
WHERE job <> 'MANAGER';
--6
select *
from emp
WHERE HIREDATE>='1981-04-02';
--7
select ename,  SAL, DEPTNO
from emp
WHERE SAL >=800;
--8
select *
from emp
WHERE DEPTNO >=20;
--9
select *
from emp
WHERE ENAME > 'L';
--10
select *
from emp
WHERE HIREDATE<'1981-12-09';
--11
select EMPNO, ename
from emp
where empno <= 7698;
--12
select ENAME, SAL, DEPTNO
from emp
WHERE HIREDATE>='1981-04-02' AND HIREDATE<='1982-12-09';
--위랑 같음
select ENAME, SAL, DEPTNO
from emp
WHERE HIREDATE BETWEEN '1981-04-02' AND '1982-12-09';
--13
select ename, JOB ,SAL
from emp
WHERE SAL >1600 AND SAL <=3000;
--14
select *
from emp
where NOT(empno >= 7654 AND EMPNO <=7782);
-- = where empno NOT BETWEEN 7654 AND 7782;
--15
select *
from emp
WHERE ENAME > 'B' AND ENAME < 'J';
-- = WHERE ENAME BETWEEN 'B' AND 'J';
--16
select *
from emp
WHERE NOT HIREDATE LIKE '81%' ;
-- = WHERE TO_CHAR(HIREDATE, 'YYYY') <> '1981';
--17
select *
from emp
WHERE job = 'MANAGER' OR JOB='SALESMAN';
-- = WHERE JOB IN ('MANAGER','SALESMAN');
--18
select *
from emp
WHERE NOT DEPTNO LIKE 20 AND NOT DEPTNO LIKE 30;
-- = WHERE DEPTNO NOT IN(20, 30);
--19
SELECT EMPNO,ENAME, HIREDATE, DEPTNO
FROM EMP
WHERE ENAME LIKE 'S%';

--20
select *
from emp
WHERE HIREDATE LIKE '81%' ;
--= WHERE HIREDATE BETWEEN '1981-01-01' AND '1981-12-31'
--21
SELECT *
FROM EMP
WHERE ENAME LIKE '%S%';
--22
SELECT *
FROM EMP
WHERE ENAME LIKE 'M____N';
--23
SELECT *
FROM EMP
WHERE ENAME LIKE '_A%';
--24
SELECT
    *
FROM EMP
WHERE COMM IS NULL;
--25
SELECT
    *
FROM EMP
WHERE COMM IS NOT NULL;
--26
SELECT
    ENAME, DEPTNO, SAL
FROM EMP
WHERE DEPTNO =30 AND SAL >=1500;
--27
SELECT
    EMPNO ,ENAME, DEPTNO
FROM EMP
WHERE DEPTNO =30 OR ENAME LIKE 'K%';
--28
SELECT
    *
FROM EMP
WHERE DEPTNO =30 AND SAL >=1500 AND JOB ='MANAGER';
--29
SELECT
    *
FROM EMP
WHERE DEPTNO =30 
ORDER BY EMPNO;
--30
SELECT
    *
FROM EMP
ORDER BY SAL DESC;
--31
SELECT
    *
FROM EMP
ORDER BY DEPTNO ASC , SAL DESC ;
--32
SELECT
    DEPTNO, ENAME, SAL
FROM EMP
ORDER BY DEPTNO DESC , ENAME ASC , SAL DESC;
--33
SELECT
    *
FROM EMP
ORDER BY DEPTNO ASC , SAL DESC ;