--문제1
select max(salary) as "최고임금" , min(salary) as "최저임금",(max(salary)-min(salary)) as "임금차이" from employees;

--문제2
select to_char(max(hire_date),'yyyy"년" mm"월" dd"일"') from employees;

--문제3
select avg(salary),max(salary),min(salary),department_id from employees group by department_id order by avg(salary) asc;

--문제4
select avg(salary),max(salary),min(salary),job_id from employees group by job_id order by avg(salary) asc;;

--문제5
select to_char(min(hire_date), 'yyyy"년" mm"월" dd"일"')
  from employees;
--문제6
select department_id,avg(salary), min(salary),(avg(salary)-min(salary))
from employees group by department_id order by (avg(salary)-min(salary)) asc;

--문제7
select * from (select job_title, sum(max_salary-min_salary),max(max_salary-min_salary) from
 jobs group by job_title order by max(max_salary-min_salary) desc)where rownum = 1;
