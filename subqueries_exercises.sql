use employees;
select *
from employees
where hire_date IN (
    select hire_date
    from employees
    where emp_no = 101010
    );

select title
from titles
where emp_no IN (
    select emp_no
    from employees
    where first_name = 'Aamod'
    );

select first_name, last_name
from employees
where gender = 'f' and emp_no in (
    select emp_no
    from dept_manager
    where to_date = '9999-01-01'
    );