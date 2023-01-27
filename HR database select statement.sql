-- ---------------------------------------------------------- --
-- Practise with HR database using exercises from W3resources --
-- ---------------------------------------------------------- --

USE HRdatabase;

select * from employees

-- Write a query to display the names (first_name, last_name) using alias name “First Name", "Last Name"

select first_name 'First Name', last_name 'Last Name' from employees;

-- Write a query to get unique department_ID from employees table

select distinct department_ID from employees;

-- Write a query to get all employee details from the employee table order by first name, descending.

select * from employees order by first_name desc;

-- Write a query to get the names (first_name, last_name), salary, PF of all the employees (PF is calculated as 15% of salary)

select first_name, last_name, salary, round((salary*0.15),2) as pf from employees;

-- Write a query to get the employee ID, names (first_name, last_name), salary in ascending order of salary

select employee_ID, first_name, last_name, salary from employees order by salary desc;

-- Write a query to get the total salaries payable to employees

select sum(salary) from employees;

-- Write a query to get the maximum and minimum salary from employees table.

select max(salary), min(salary) from employees;

-- Write a query to get the average salary from the employees table.

select avg(salary) from employees;

-- Write a query to get the number of employees working with the company.

select count(employee_ID) from employees;

-- Write a query to get the number of jobs available in the employees table.

select count(job_id) from employees;

--  Write a query get all first name from employees table in upper case.

select upper(first_name) from employees;

-- Write a query to get the first 3 characters from employees first names.

select substring(first_name, 1, 3) from employees;

-- Write a query to calculate 171*214+625

select 171*214+625 result;

-- Write a query to get the names (for example Ellen Abel, Sundar Ande etc.) of all the employees from employees table.

select concat(first_name, ' ', last_name) as employee_name from employees;

-- Write a query to get first name from employees table after removing white spaces from both side.

select trim(first_name) from employees;

-- Write a query to get the length of the employee names (first_name, last_name) from employees table.

select first_name, last_name, length(first_name)+length(last_name) result from employees;

-- Write a query to check if the first_name fields of the employees table contains numbers.

select * from employees where first_name regexp '[0-9]';

-- Write a query to select first 10 records from a table.

select * from employees limit 10;

-- Write a query to get monthly salary (round 2 decimal places) of each and every employee. Assume salary field is 12 months salary.

select round((salary/12),2) as monthly_salary from employees;


