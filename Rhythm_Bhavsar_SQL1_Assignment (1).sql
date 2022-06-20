-- Q1 Write a SQL query to find the salaries of all employees  
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY from employees;

-- Q2 Write a SQL query to find the unique designations of the employees. Return job name.
select distinct JOB_TITLE from jobs;

--  Q3 write a SQL query to list the employees’ name, increased their salary by 15%, and expressed as number of Dollars.
SELECT concat(FIRST_NAME, " ", LAST_NAME) AS "Employee name", (1.15*SALARY) AS "Salary" FROM employees;

--  Q4 Write a SQL query to list the employee's name and job name as a format of "Employee & Job".
SELECT concat(employees.FIRST_NAME, " ", employees.LAST_NAME, "  &  ", jobs.JOB_TITLE) AS "Employee name & Job" FROM employees JOIN jobs on (employees.JOB_ID = jobs.JOB_ID);

-- Q5 Write a SQL query to find those employees with hire date in the format like February 22, 1991. Return employee ID, employee name, salary, hire date.
SELECT EMPLOYEE_ID, concat(FIRST_NAME, " ", LAST_NAME) AS "Employee name", SALARY, DATE_FORMAT(HIRE_DATE, ' %M %D, %Y') AS hire_date from employees;

-- Q6 Write a SQL query to count the number of characters except the spaces for each employee name. Return employee name length.
SELECT FIRST_NAME,length(FIRST_NAME) AS 'Length' FROM employees;

-- Q7 Write a SQL query to find the employee ID, salary, and commission of all the employees. 
SELECT EMPLOYEE_ID, SALARY, ((COMMISSION_PCT * SALARY)/100 ) as 'Commision'
 from employees
 order by COMMISSION_PCT desc;

-- Q8 Write a SQL query to find the unique department with jobs. Return department ID, Job name. 
select distinct employees.DEPARTMENT_ID,jobs.JOB_TITLE from employees JOIN jobs on (employees.JOB_ID = jobs.JOB_ID);

-- Q9 Write a SQL query to find those employees who joined before 1991. Return complete information about the employees.
SELECT * FROM employees WHERE HIRE_DATE<('1991-1-1');


-- Q10 Write a SQL query to compute the average salary of those employees who work as ‘ANALYST’. Return average salary.
SELECT avg(employees.SALARY) FROM employees JOIN jobs on (employees.JOB_ID = jobs.JOB_ID) WHERE jobs.JOB_TITLE = 'ANALYST';
