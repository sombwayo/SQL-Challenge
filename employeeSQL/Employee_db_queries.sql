
--1 List the employee number, last name, first name, sex, and salary of each employee 
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex,salaries.salary
FROM employees
JOIN salaries ON 
employees.emp_no=salaries.emp_no
ORDER by salary DESC;

--2 List the first name, last name, and hire date for the employees who were hired in 1986
SELECT employees.last_name, employees.first_name, employees.hire_date
FROM employees
WHERE hire_date BETWEEN '01/01/1986' AND '12/31/1986';

--3 List the manager of each department along with their department number, department name, employee number, last name, and first name 
SELECT employees.last_name, employees.first_name,departments.dept_name, dept_manager.emp_no
FROM employees
JOIN dept_manager ON
dept_manager.emp_no=employees.emp_no
JOIN departments ON
dept_manager.dept_no=departments.dept_no;

--4 List the department number for each employee along with that employee’s employee number, last name, first name, and department name 
SELECT dept_emp.dept_no, employees.last_name, employees.first_name,departments.dept_name,dept_emp.emp_no
FROM employees
JOIN dept_emp ON
dept_emp.emp_no=employees.emp_no
JOIN departments ON
dept_emp.dept_no=departments.dept_no;

--5 List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, SEX
FROM employees WHERE first_name= 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name ASC;

--6 List each employee in the Sales department, including their employee number, last name, and first name.
SELECT departments.dept_name, employees.emp_no, employees.last_name,
employees.first_name
FROM employees
JOIN dept_emp ON
employees.emp_no=dept_emp.emp_no
JOIN departments ON
departments.dept_no=dept_emp.dept_no
WHERE dept_name='Sales';

--7 List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT employees.emp_no, departments.dept_name, employees.last_name, employees.first_name
FROM employees
JOIN dept_emp ON
employees.emp_no=dept_emp.emp_no
JOIN departments ON
departments.dept_no=dept_emp.dept_no
WHERE dept_name IN ('Sales', 'Development')

--8 List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name, COUNT(last_name) AS "Frequency of Last Name"
FROM employees
GROUP BY last_name
ORDER BY "Frequency of Last Name" DESC;