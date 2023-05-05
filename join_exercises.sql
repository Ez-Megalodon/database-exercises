use employees;

select dept_name as 'Department Name', CONCAT(first_name , ' ', last_name) as 'Department Manager'
from departments as d
    join dept_manager dm on d.dept_no = dm.dept_no
    join employees e on e.emp_no = dm.emp_no
    where to_date like '9%'
    order by dept_name;

select dept_name as 'Department Name', CONCAT(first_name , ' ', last_name) as 'Department Manager'
from departments as d
         join dept_manager dm on d.dept_no = dm.dept_no
         join employees e on e.emp_no = dm.emp_no
where to_date like '9%' and e.gender = 'F'
order by dept_name;

select title, count(title) as Total from titles t
    join dept_emp de on t.emp_no = de.emp_no
    join departments d on de.dept_no = d.dept_no
where dept_name = 'Customer Service'
    and t.to_date like '9%'
    and de.to_date like '9%'
    group by title;

select dept_name as 'Department Name', CONCAT(first_name , ' ', last_name) as 'Department Manager', salary as Salary
from departments as d
    join dept_manager dm on d.dept_no = dm.dept_no
    join employees e on e.emp_no = dm.emp_no
    join salaries s on e.emp_no = s.emp_no
where dm.to_date like '9%'
and s.to_date like '9%'
order by dept_name;