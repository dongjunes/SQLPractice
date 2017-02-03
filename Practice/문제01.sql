--문제1
select first_name||' '|| last_name as "이름",email as "이메일",phone_number as "전화번호"
from employees order by hire_date asc;

--문제2
select job_title,max_salary from jobs
order by max_salary desc;

--문제3
select count(*) from employees where manager_id is null;

--문제4
select job_title as "이름" from jobs
order by max_salary desc;

--문제5
select count(department_name) from departments;

--문제6
select department_name from departments
order by length(department_name) desc;

--문제7
select count(department_name) from departments where manager_id is null;

--문제8
SELECT upper(country_name) FROM countries 
where region_id is not null order by country_name asc;

--문제9
select '관리지역수' || count(region_name) from regions;
select region_name from regions
order by length(region_name) asc;

--문제10
select lower(city) as "도시이름" from locations
order by city asc;


