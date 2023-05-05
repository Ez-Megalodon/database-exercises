use employees;
# 1
select * from employees
    where hire_date in (
        select hire_date
        from employees
        where emp_no = 101010
        );
# 2
select title from titles
    where emp_no in (
        select emp_no
        from employees
        where first_name = 'Aamod'
        );
# 3
select first_name, last_name from employees
    where emp_no in (
        select emp_no
        from dept_manager
        where to_date like '9%'
        )
    and (gender = 'F');

# BONUS 1
select dept_name from departments
    where dept_no in (
        select dept_no
        from dept_manager
        where emp_no in (
            select emp_no
            from employees
            where gender = 'F'
            )
        and to_date like '9%'
        order by dept_name
        );

# BONUS 2
select first_name, last_name from employees
    where emp_no in (
        select emp_no
        from salaries
        where salary in (
            select MAX(salary)
            from salaries
            )
        );

