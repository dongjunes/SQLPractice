--JOIN

select a.FIRST_NAME,b.DEPARTMENT_NAME from employees a,departments b where a.DEPARTMENT_ID=b.DEPARTMENT_ID
 and b.DEPARTMENT_NAME like 'P%';--join 조건(n-1)

--Inner Join (Equi Join)
select a.FIRST_NAME, b.FIRST_NAME from employees a, employees b where a.MANAGER_ID = b.MANAGER_ID;

--Outer Join
select count(*) from employees a, departments b where a.DEPARTMENT_ID(+)=b.DEPARTMENT_ID;

select nvl(a.FIRST_NAME,'소속 직원이 없음.'),b.DEPARTMENT_NAME from employees a, departments b where a.DEPARTMENT_ID(+)=b.DEPARTMENT_ID;







