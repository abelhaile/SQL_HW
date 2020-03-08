-- List the following details of each employee: employee number, last name, first name, gender, and salary?
select employees.emp_no,last_name, first_name, gender, salary from employees  left join salaries  on employees.emp_no=salaries.emp_no

-- List employees who were hired in 1986?
select first_name, last_name, hire_date from employees where hire_date between '1986-01-31' and '1986-12-31'

--  department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT dept_no,emp_no,last_name,first_name,from_date,to_date,dept_name from dept_manager
LEFT JOIN departments USING (dept_no)
LEFT JOIN employees USING (emp_no)

-- employee number, last name, first name, and department name.
select emp_no, dept_no, last_name, first_name,dept_name from dept_emp
left join departments using(dept_no)
left join employees using (emp_no)

-- List all employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name from employees where first_name = 'Hercules' and last_name like 'B%' 

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
select emp_no,last_name, first_name,dept_name from departments 
join dept_emp using (dept_no)
join employees using (emp_no)
where dept_name='Sales'

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select emp_no,last_name, first_name,dept_name from departments 
join dept_emp using (dept_no)
join employees using (emp_no)
where dept_name in ('Sales','Development')

-- list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count (last_name) "Last Names Grouped" from employees group by last_name order by "Last Names Grouped" desc
