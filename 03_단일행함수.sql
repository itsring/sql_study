--단일행 함수



--대소문자변환 UPPER LOWER INITCAP
SELECT upper('SQL Course') FROM DUAL; -- DUAL 테스트용 테이블 이용
-- SQL COURSE
SELECT lower('SQL Course') FROM DUAL;
-- sql course
SELECT INITCAP('SQL Course') FROM DUAL;
-- Sql Course

--문자 함수
SELECT
    substr('abcdefg',3,4)
FROM dual;

SELECT
    substr('abcdefg',3,4), length('abcdefg'), instr('abcdefg','d')
FROM dual;-- cdef                7                    4
    
SELECT
    trim(' 헬로우 ') -- 공백을 지워줌.
FROM dual;

select department_id, last_name
from employees
where last_name = 'higgins';

select department_id, last_name
from employees
where lower(last_name) = 'higgins';

select last_name, concat('직업명이',job_id) as 직업명
from employees
where substr(job_id,4,3)='REP';

SELECT last_name, substr(last_name,-1,1)
from employees;

select employee_id, concat(first_name, last_name) 전체이름, last_name,
length(last_name) 길이, instr(last_name, 'a') "'a'가 몇번째?"
from employees;

select first_name, last_name, 
    upper(concat(first_name, substr(last_name,1,3))) 이름합성
from employees
where department_id= 60;

select job_id,
    replace(job_id, 'ACCOUNT','ACCNT') 적용결과
from employees;

--예제
SELECT
    lower(last_name) 소문자, upper(last_name) 대문자, INITCAP(email) 이메일
FROM employees;

SELECT
    job_id 작업명, substr(job_id,1,2) 앞의두개
FROM employees;

--숫자형함수

SELECT round(15.193,1) 소수첫째,
round(15.193,0) 정수,
round(15.193,-1) " 10의 자리 "
FROM dual;

SELECT
    employee_id 짝수, last_name
FROM employees
where MOD(employee_id,2)=0
order by 1;

--예제
SELECT salary 월급 ,
round(salary/30,0) 정수,
round(salary/30,1) 첫째자리,
round(salary/30,-1) "10의 자리" 
from employees;

---날짜형 함수
SELECT
    round(sysdate,'DD') 일,
    round(sysdate,'MM') 월,
    round(sysdate,'YYYY')년도,
    round(MONTHS_BETWEEN('2021/10/01','1997/05/06'),0) 월차이,
    ADD_MONTHS('2017/07/10',3) 애드먼쓰
FROM dual;

SELECT
    sysdate -1 어제,
    sysdate 오늘,
    sysdate +1 내일,
    sysdate -7 "일주일 전"
FROM    dual;

SELECT last_name, floor(sysdate - hire_date) 근무일수, department_id
from employees
where department_id >=90;


SELECT employee_id, hire_date,
    MONTHS_BETWEEN(SYSDATE,hire_date) 근무월수,
    ADD_MONTHS(hire_date, 6) "6개월 추가",
    NEXT_DAY(hire_date, '금요일' or 6) Next_day,
    LAST_DAY(hire_date) Last_day
FROM employees
where MONTHS_BETWEEN(SYSDATE,hire_date) <150;