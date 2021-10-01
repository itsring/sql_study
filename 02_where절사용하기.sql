--where 절 WHERE 조건;

SELECT *
FROM employees
WHERE salary > 14000;

-- 문자열은 따옴표로 표시 쌍따옴표는 쓰면 안됨, 이름이 King인 직원
SELECT *
FROM employees
WHERE last_name = 'King';


-- 날짜 비교
SELECT *
FROM employees
WHERE hire_date < '02/06/10'; -- 고용 일이 2002년 6월 10일이전

-- 비교 조회 조건 (= 같다, <> OR != 같지않다, >크다, < 작다)
--예제1
SELECT *
FROM employees
WHERE employee_id = 100;

--예제2
SELECT *
FROM employees
WHERE first_name='David';

--예제3
SELECT *
FROM employees
WHERE employee_id<='105';

--예제4
SELECT *
FROM job_history
WHERE start_date >='06/03/03';

--예제5
SELECT *
FROM departments
WHERE location_id !=1700; -- == <>

--논리 연산자
-- and가 먼저 동작하고 or 이 동작함 / or 먼저 동작하고 싶으면 ()로 묶어서 사용
SELECT 
    last_name, department_id, salary
FROM employees
WHERE department_id =60
or department_id=80
and salary >=10000;

SELECT 
    last_name, department_id, salary
FROM employees
WHERE (department_id =60
or department_id=80)
and salary >=10000;

SELECT 
    *
FROM employees
WHERE NOT(hire_date >'2004/01/01' or salary >5000);
-- = hire_date <='2004/01/01' and salary <=5000

--예제1
SELECT 
    *
FROM employees
WHERE salary>4000 
and job_id='IT_PROG';
--예제2
SELECT 
    *
FROM employees
WHERE salary>4000 
and (job_id='IT_PROG';
or job_id='FI_ACCOUNT');
