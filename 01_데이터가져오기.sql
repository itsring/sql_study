--한줄 주석 단축키는 다른 에디터랑 같음 CTRL /
/* 
    여러줄 주석
*/
-- 테이블의 모든 i행과 열을 읽어오기

SELECT * --전체 열
FROM departments; -- departments 테이블에서

-- 특정 열만 조회하기

SELECT
    department_id, department_name
FROM departments;

SELECT
    employee_id, first_name, last_name
FROM employees;

-- 별칭 붙이기
SELECT
    department_id as 부서번호, department_name as 부서이름
FROM departments;

-- 산술 연산자 + - / * 
SELECT
    first_name 이름, job_id 직책, salary 월급
FROM employees;

SELECT
    first_name 이름, job_id 직책, salary 월급수정전 ,salary - salary/10 월급수정후
FROM employees;

SELECT
    first_name 이름, last_name 성 ,job_id 직책, salary 월급 , (salary-1000)*0.05 보너스
FROM employees;

-- distinct 중복 값 제거
SELECT
    DISTINCT job_id 직책
FROM employees;

-- ex1
SELECT
    employee_id,first_name, last_name
FROM employees;

-- ex2
SELECT
    first_name, salary, salary*1.1 AS뉴셀러리
FROM employees;

-- ex3
SELECT
    employee_id 사원번호, first_name 이름, last_name 성
FROM employees;

--연결 연산자 ||
SELECT
    first_name||' '|| last_name as full_name
FROM employees;