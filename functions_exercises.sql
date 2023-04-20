use employees;

select 'employees with names starting or ending with e';
select concat(first_name,' ', last_name)
from employees
where last_name like 'e%' or last_name like '%e';
# employees born on christmas
select * from employees where month(birth_date) = 12 and day(birth_date) = 25;
# employees born on christmas and in the 90s
select * from employees where month(birth_date) = 12 and day(birth_date) = 25 and year(hire_date) between 1990 and 1999;
# oldest employee born on christmas
select * from employees where month(birth_date) = 12 and day(birth_date) = 25 and year(hire_date) between 1990 and 1999 order by hire_date desc, birth_date;
# age of employees born on christmas in the 90s
select datediff(curdate(), hire_date) from employees where month(birth_date) = 12 and day(birth_date) = 25 and year(hire_date) between 1990 and 1999;



