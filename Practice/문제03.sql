--문제1
--employee2 department 1
select a.employee_id,a.first_name,b.DEPARTMENT_NAME,man.FIRST_NAME 
from employees a,departments b, employees man
where a.DEPARTMENT_ID=b.DEPARTMENT_ID and a.MANAGER_ID=man.EMPLOYEE_ID;

--문제2
--region conrty
select a.region_name,b.country_name from regions a,countries b 
where a.REGION_ID=b.REGION_ID order by a.REGION_ID asc;


--문제3
--department(부서번호,부서이름) - employ(매니저이름) contry reson 조인조건4개
select d.DEPARTMENT_ID,d.DEPARTMENT_NAME,m.FIRST_NAME,l.CITY,c.COUNTRY_NAME
,r.REGION_NAME from
departments d,employees m,locations l,countries c,regions r 
where d.MANAGER_ID=m.MANAGER_ID and d.LOCATION_ID=l.LOCATION_ID and
l.COUNTRY_ID=c.COUNTRY_ID and c.REGION_ID=r.REGION_ID;


--문제4
--job history,job join
select (man.FIRST_NAME || ' ' || man.LAST_NAME) as "이름"
from employees man, job_history  jh, jobs j
where man.EMPLOYEE_ID=jh.EMPLOYEE_ID 
and jh.JOB_ID=j.JOB_ID
and j.job_title='Public Accountant';

--문제5 
--성으로  order by
select e.EMPLOYEE_ID as "사번",e.FIRST_NAME as "이름", e.LAST_NAME as "성",d.DEPARTMENT_NAME as "부서이름"
from employees e,departments d
where e.DEPARTMENT_ID=d.DEPARTMENT_ID
order by e.LAST_NAME asc;

--문제6
--employees2개
select m1.EMPLOYEE_ID as "사번",m1.LAST_NAME as "성",to_char(m1.HIRE_DATE,'yyyy"년"MM"월"DD"일"')
from EMPLOYEES m1, EMPLOYEES m2
where m1.MANAGER_ID=m2.EMPLOYEE_ID and m1.HIRE_DATE<m2.HIRE_DATE;



