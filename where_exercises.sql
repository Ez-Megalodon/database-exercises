use employees;

select * from employees where first_name = 'Irena' and gender = 'm' OR first_name = 'Vidya' and gender = 'm' OR first_name = 'Maya'
and gender = 'm';

select * from employees where last_name like 'E%';

select * from employees where last_name like '%q%';

select * from employees where last_name like 'e%' or ( last_name like '%e');

select * from employees where last_name like 'e%' and ( last_name like '%e');

select * from employees where last_name like '%q%' and last_name not like '%qu%';