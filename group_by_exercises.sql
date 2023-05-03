use employees;

select distinct title from titles;

select last_name from employees where last_name like 'e%'
                        and ( last_name like '%e')
                        group by last_name;

select COUNT(*),last_name from employees where last_name like '%q%'
                        and last_name
                        not like '%qu%'
                        group by last_name;

select COUNT(gender),gender from employees
                        where first_name = 'Irena'
                        OR first_name = 'Vidya'
                        OR first_name = 'Maya'
                        group by gender;