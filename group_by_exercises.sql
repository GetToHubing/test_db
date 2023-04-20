use employees;
select distinct title from titles;
# employees with names starting and ending with e
select first_name, last_name
from employees
where last_name like 'e%' and last_name like '%e'
group by first_name, last_name;

# select 'employees with the letter q in their name but not qu';
select count(last_name), last_name
from employees
where last_name like '%q%'
  and last_name not like '%qu%'
group by last_name;

# select 'return gender and number of each';
select count(*), gender
from employees
where first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya' group by gender;

