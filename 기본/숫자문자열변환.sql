--Number -> 문자열
select employee_id,to_char(salary,'9999') from employees;

select employee_id,to_char(salary,'99,999') from employees;

select employee_id,to_char(salary,'09999') from employees;

select to_char(3.141592,'9.999999')from dual;

select employee_id,to_char(salary,'L99999') from employees;

select to_char(-1000,'99999MI') from dual;
select to_char(1000,'S99999') from dual;
select to_char(0,'S99999') from dual;

select to_char(1234,'RN') from dual;
select to_char(1234,'rn') from dual;

select to_char(1234,'xxx') from dual;
select to_char(1234,'XXX') from dual;
