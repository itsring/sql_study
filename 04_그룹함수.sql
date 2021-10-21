<<<<<<< HEAD
-- 그룹함수 (다중행 함수, 집계함수)
SELECT ROUND( AVG(salary) ) 평균값 , MAX(salary) 최대값, MIN(salary) 최소값, SUM(salary) 합계, COUNT(salary) 카운트
FROM employees 
WHERE job_id LIKE '%REP%';

SELECT COUNT(*) FROM employees;

SELECT COUNT(*) 
FROM employees WHERE department_id = 80; --80번 부서의 직원들

-- 그룹함수에서는 널값을 제외하고 계산한다.(예외 COUNT(*))
SELECT COUNT(department_id)
FROM employees;  -- 1명이 부서가 없음(사장)

SELECT COUNT(DISTINCT department_id)
FROM employees;  -- 중복되지 않은 부서의 개수

SELECT AVG(commission_pct)
FROM employees;  -- 널값을 제외한 모든 직원들의 커미션 평균

-- GROUP BY 절 : 특정 그룹으로 나누어서 그룹함수를 사용
SELECT department_id 부서번호, ROUND(AVG(salary)) 평균급여
FROM employees
GROUP BY department_id 
ORDER BY 부서번호; -- 부서번호로 그룹나눔

SELECT * FROM employees WHERE department_id is null; -- 부서가 없는 사람

-- 예제 1
SELECT department_id 부서번호, COUNT(*) 사원수, MAX(salary) 최고급여, MIN(salary) 최소급여,
       SUM(salary) 급여합계, ROUND(AVG(salary)) 평균급여
FROM employees
GROUP BY department_id 
ORDER BY 급여합계 DESC; 

-- 예제 2
SELECT department_id 부서번호, job_id 직종, SUM(salary), COUNT(*) 직원수
FROM employees
GROUP BY department_id, job_id
ORDER BY department_id;

-- 예제 3
SELECT 
   AVG( MAX(salary) ) 부서별최고월급평균,
   AVG( MIN(salary) ) 부서별최저월급평균
FROM employees
GROUP BY department_id;

-- 그룹 함수의 조건절 HAVING
SELECT department_id 부서번호, COUNT(*) 사원수
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5; -- 사원수 5명이넘는 부서

-- 예제 1
SELECT job_id 직업번호, SUM(salary) 급여합계
FROM employees WHERE job_id != 'AC_MGR'
GROUP BY job_id
HAVING AVG(salary) > 10000
ORDER BY 급여합계 DESC;

-- 예제 2
SELECT department_id 부서번호, ROUND( AVG(salary) ) 급여합계
FROM employees WHERE department_id != 40
GROUP BY department_id
HAVING AVG(salary) <= 7000;

-- 예제 3
SELECT job_id 직업번호, SUM(salary) 급여합계
FROM employees WHERE job_id NOT LIKE '%REP%'
GROUP BY job_id
HAVING SUM(salary) >= 13000
ORDER BY 급여합계 DESC;




=======
--group functio

SELECT round(avg(salary)) 평균값, max(salary) 최대값, min(salary) 최소값,
    sum(salary) 합계, count(salary) 카운트
    
FROM employees
where job_id like'%REP%';

SELECT
    count(*) 카운트
FROM employees;

SELECT
    count(*)
FROM employees where department_id = 80;

SELECT
    count(department_id) 카운트
FROM employees;

SELECT department_id 부서명,count(*) 사원수, 
        max(salary) 최대급여 ,min(salary) 최소급여
        , sum(salary) 급여합계 ,round(avg(salary)) 평균월급
FROM employees
group by department_id
order by 급여합계 DESC;

SELECT department_id 부서번호, job_id 직업,
        manager_id 상사번호 , sum(salary) 급여합계,
        count(department_id) 직원수
FROM employees
group by  department_id ,job_id ,manager_id
order by department_id;


SELECT round(avg(max(salary))) 
    부서별최고월급평균, round(avg(min(salary))) 부서별최저월급평균
FROM employees
group by department_id;

SELECT department_id 부서명, count(*) 사원수
FROM employees
group by department_id
having count(*) >5;

SELECT job_id 직종, sum(salary) 월급여합계
FROM employees
group by job_id
having avg(salary) >10000 and (job_id != 'AC_MGR')
order by sum(salary) DESC;

SELECT department_id 부서번호, round(avg(salary)) 월급여합계
FROM employees
where department_id != 40
group by department_id
having round(avg(salary)) <= 70000;


SELECT job_id 직종, sum(salary) 월급여합계
FROM employees where job_id not like  '%REP%'
group by job_id
having sum(salary) >=13000
order by sum(salary) DESC;
>>>>>>> a11ca9968cab0f1bc86a2814191d0397f2fc4b73
