SELECT employee_id, first_name, job_id, job_title    
FROM employees
natural join jobs;

SELECT e.employee_id, e.last_name, e.department_id,
    d.department_name    
FROM employees e
join departments d
    on e.department_id = d.department_id;
    
SELECT employee_id,department_name, city
FROM employees e
join departments d
    on e.department_id = d.department_id
join locations l
    on d.location_id = l.location_id;
    

SELECT e.employee_id, e.last_name, e.department_id,
    d.location_id    
FROM employees e
join departments d
    on e.department_id = d.department_id
where d.department_id = 50
    and e.salary >5000;
    
    -- 예제

SELECT  d.department_name 부서명, l.city 도시, c.country_name 국가명
FROM departments d
join locations l
    on d.location_id=l.location_id
join countries c
    on l.country_id = c.country_id
where l.city in('Seattle', 'London');
    
    
    --자체조인
SELECT  e.last_name 직원, m.last_name 매니저
FROM employees e join employees m
    on e.manager_id = m.employee_id;

    

    