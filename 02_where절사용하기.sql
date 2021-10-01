--where 절 WHERE 조건;

SELECT * FROM employees WHERE salary > 14000;

-- 문자열은 따옴표로 표시 쌍따옴표는 쓰면 안됨, 이름이 King인 직원
SELECT * FROM employees WHERE last_name = 'King';


-- 날짜 비교
SELECT * FROM employees WHERE hire_date < '02/06/10'; -- 고용 일이 2002년 6월 10일이전

-- 비교 조회 조건 (= 같다, <> OR != 같지않다, >크다, < 작다)
--예제1
SELECT * FROM employees WHERE employee_id = 100;

--예제2
SELECT * FROM employees WHERE first_name='David';

--예제3
SELECT * FROM employees WHERE employee_id<='105';

--예제4
SELECT * FROM job_history WHERE start_date >='06/03/03';

--예제5
SELECT * FROM departments WHERE location_id !=1700; -- == <>

--논리 연산자
-- and가 먼저 동작하고 or 이 동작함 / or 먼저 동작하고 싶으면 ()로 묶어서 사용
SELECT last_name, department_id, salary FROM employees WHERE department_id =60 or department_id=80 and salary >=10000;

SELECT last_name, department_id, salary FROM employees WHERE (department_id =60 or department_id=80) and salary >=10000;

SELECT * FROM employees WHERE NOT(hire_date >'2004/01/01' or salary >5000);
-- = hire_date <='2004/01/01' and salary <=5000

--예제1
SELECT * FROM employees WHERE salary>4000 and job_id='IT_PROG';

--예제2
SELECT * FROM employees WHERE salary>4000 and (job_id='IT_PROG' or job_id='FI_ACCOUNT');

-- IN 연산자
SELECT * FROM employees WHERE salary in(3000,4000,2700);

--예제 1
SELECT * FROM employees WHERE salary in(10000,17000,24000);

--예제2
SELECT * FROM employees WHERE department_id not in (30,50,80,100,110);

--BETWEEN 연산자
--예제1
SELECT * FROM employees WHERE salary BETWEEN 10000 AND 20000;

--예제2
SELECT * FROM employees WHERE hire_date BETWEEN '04/01/01' AND '04/12/30';

--예제3
SELECT * FROM employees WHERE salary NOT BETWEEN 7000 AND 17000;

--like 연산자
-- _ % 사용 
SELECT * FROM employees WHERE last_name like 'B%';-- 대문자 B로 시작 뒤에는 상관없음
SELECT * FROM employees WHERE last_name LIKE '%b%';-- 문자열의 중간이 b가있으면 전부 출력
SELECT * FROM employees WHERE last_name like '____y';-- y앞에 _의 개수만큼 자리수 

-- 예제1
SELECT * FROM employees WHERE job_id like '%AD%';

--예제2
SELECT * FROM employees WHERE job_id like '%AD___%';

--예제3
SELECT * FROM employees WHERE phone_number like '%1234';

--예제4
SELECT * FROM employees WHERE phone_number like '%9' and phone_number not like '%3%';

--예제5
SELECT * FROM employees WHERE job_id like '%MGR%' or job_id like '%ASST%';

--IS NULL 연산자, ORDER BY 
SELECT * FROM employees where commission_pct IS NULL; -- null값 검색
--where commission_pct IS NOT NULL; -- null이 아닌 값 검색
--예제1
SELECT * FROM employees where manager_id IS NULL;

--ODDER By
SELECT * FROM employees ORDER BY last_name DESC; -- DESC 내림차순 정렬 / ASC 오름차순 정렬 

SELECT * FROM employees order by department_id, employee_id;

SELECT department_id, last_name, salary*12 연봉 FROM employees ORDER BY 연봉 DESC;

--예제 1
SELECT
    employee_id, first_name, last_name
FROM employees
ORDER BY employee_id DESC;

--예제 2
SELECT
    *
FROM employees
where job_id LIKE '%CLERK%'
ORDER BY salary DESC;

--예제 3
SELECT
 * 
FROM employees 
WHERE employee_id BETWEEN 120 AND 150
ORDER BY department_id DESC , salary DESC; -- order by 는 항상 마지막에


