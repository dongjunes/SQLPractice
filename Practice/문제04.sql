--문제1
select count(salary) from employees where salary<(select avg(salary) from employees);

--문제2
select a.first_name,b.max_salary from employees a,
(select department_id, max(salary) as max_salary from employees group by department_id)b
where a.department_id = b.department_id and a.salary=b.max_salary;

--문제3 sum ,subquery, from절  join
select b.job_title,a.sum_salary 
from (select job_id,sum(salary) as sum_salary from employees group by job_id) a,jobs b 
where a.job_id=b.JOB_ID
order by a.sum_salary desc;

--문제4 corelated, multirow등등

select employee_id as "사번", last_name as "성", salary as "연봉" from employees outter 
where salary>(select avg(salary) from employees
where employees.DEPARTMENT_ID = outter.DEPARTMENT_ID);


