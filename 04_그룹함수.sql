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