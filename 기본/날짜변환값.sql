-- Date -> 문자열

SELECT TO_CHAR (SYSDATE, 'yyyy-mm-dd hh:mi:ss') FROM DUAL;

SELECT employee_id, hire_date FROM employees;

SELECT employee_id, TO_CHAR (hire_date, 'yyyy-mm-dd hh:mi:ss') FROM employees;

SELECT employee_id,
       TO_CHAR (hire_date,
                'yyyy"년" mm"월" dd"일" hh24"시" mi"분" ss"초"')
  FROM employees;

SELECT employee_id,
       TO_CHAR (hire_date, 'yyyy"년" mm"월" dd"일" d"일째되는날"')
  FROM employees;
  
  