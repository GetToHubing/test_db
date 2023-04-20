use employees;
select 'employees with the certain first names';
select *
from employees
where (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya')
order by last_name, first_name;

select 'employees with names starting with e';
select distinct *
from employees
where last_name like 'e%'
order by emp_no desc;
--
-- select 'employees with the letter q in their name';
-- select distinct *
-- from employees
-- where last_name like '%q%';
--
-- select 'employees with names starting or ending with e';
-- select distinct *
-- from employees
-- where last_name like 'e%' or last_name like '%e';
--
-- select 'employees with names starting and ending with e';
-- select distinct *
-- from employees
-- where last_name like 'e%' and last_name like '%e';

-- select 'employees with the letter q in their name but not qu';
-- select distinct *
-- from employees
-- where last_name like '%q%'
--   and last_name not like '%qu%';
