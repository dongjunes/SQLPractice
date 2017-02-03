-- 문자열 함수

SELECT LOWER ('Database Management System') FROM DUAL;

SELECT first_name, UPPER (last_name) FROM employees;

SELECT INITCAP ('database management system') FROM DUAL;

SELECT CONCAT (CONCAT (first_name, ' '), last_name) FROM employees;

SELECT SUBSTR ('Database Management System', 2, 3) FROM DUAL;

SELECT LENGTH ('Database Management System') FROM DUAL;

SELECT INSTR ('Database Management System', 'Sys') FROM DUAL;

SELECT employee_id, LPAD (salary, 10, '*') FROM employees;

SELECT employee_id, RPAD (salary, 10, '*') FROM employees;

SELECT TRIM ('#' FROM '###Database Management System##') FROM DUAL;

select replace('Database Management System','a','A') from dual;

