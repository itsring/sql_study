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
