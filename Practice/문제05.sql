--문제1 max,order by desc
select a.first_name || ' ' || a.last_name as "이름",a.salary,b.department_name
from employees a,departments b
where hire_date=(select max(hire_date) from employees where a.DEPARTMENT_ID=b.DEPARTMENT_ID)
order by a.HIRE_DATE desc;

--문제2 ...
select EMPLOYEE_ID,LAST_NAME,salary from employees outter 
where salary > (select avg(salary) from employees
where DEPARTMENT_ID = outter.DEPARTMENT_ID);


--문제3 부서별 평균연봉 구한 후 group by dept_id 사용(topk)
select employee_id,last_name,salary,j.JOB_title
from (select department_id from (select department_id, avg(salary) from employees
group by department_id 
order by avg(salary) desc)
where rownum=1) a,employees b,jobs j
where a.department_id=b.DEPARTMENT_ID and b.JOB_ID=j.JOB_ID;


--문제4 
select b.department_name from(
select department_id,avg(salary) as avg_salary from employees
group by department_id
order by avg_salary desc )a,departments b
where rownum=1 and a.department_id = b.DEPARTMENT_ID;



--문제5 topk group by
select city from (
select avg(salary),l.city 
from employees a,departments d,locations l
where a.DEPARTMENT_ID=d.DEPARTMENT_ID and d.LOCATION_ID=l.LOCATION_ID
					group by l.city
					order by avg(salary) desc)
where rownum=1;


--문제6

select job_title from(
select avg(salary),j.job_title
from EMPLOYEES e,jobs j 
where e.JOB_ID=j.JOB_ID
group by j.JOB_TITLE
order by avg(salary) desc)
where rownum=1;

