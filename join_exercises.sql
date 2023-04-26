use employees;
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01';

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
  and e.gender = 'f';

SELECT title, count(title)
FROM titles as t
         JOIN dept_emp as de
              ON de.emp_no = t.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
  and de.dept_no = 'd009'
  and t.to_date = '9999-01-01'
group by t.title;

SELECT d.dept_name as `Department Name`,
       CONCAT(e.first_name, ' ', e.last_name) AS `Department Manager`,
       s.Salary as Salary
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
         JOIN salaries as s
              on de.emp_no = s.emp_no
WHERE de.to_date = '9999-01-01'
  and s.to_date = '9999-01-01';