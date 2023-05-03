use employees;

select * from employees where first_name = 'Irena' and gender = 'm' OR first_name = 'Vidya' and gender = 'm' OR first_name = 'Maya'
    and gender = 'm' order by last_name desc, first_name desc;

select * from employees where last_name like 'E%' order by emp_no desc ;

select * from employees where last_name like '%q%';

select * from employees where last_name like 'e%' or ( last_name like '%e');

select CONCAT(first_name, ' ',last_name) from employees where last_name like 'e%' and ( last_name like '%e');

select * from employees where last_name like '%q%' and last_name not like '%qu%';

select * from employees where MONTH(birth_date) = 12
                        AND DAYOFMONTH(birth_date) = 25;

select * from employees where (MONTH(birth_date) = 12)
                        AND (DAYOFMONTH(birth_date) = 25)
                        AND YEAR(hire_date) between 1990 and 2000
                        order by birth_date desc, hire_date desc;

SELECT *, DATEDIFF(NOW(), hire_date) as days_worked from employees
                        where (MONTH(birth_date) = 12)
                        AND (DAYOFMONTH(birth_date) = 25)
                        AND YEAR(hire_date) BETWEEN 1990 AND 2000
                        order by birth_date desc, hire_date desc;

