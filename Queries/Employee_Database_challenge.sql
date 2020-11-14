Select a.emp_no, first_name, last_name, title, from_date, to_date 
-- INTO retirement_titles
from employees a 
join title b on a.emp_no = b.emp_no
WHERE birth_date between '1952-01-01' and '1955-12-31'
order by emp_no asc
;


Select DISTINCT ON (emp_no) emp_no, first_name, last_name, title 
--INTO unique_titles
from retirement_titles order by emp_no asc,to_date desc ;

Select title, count(*) 
--INTO retiring_titles
from unique_titles group by 1 order by 2 desc;


Select DISTINCT ON (emp_no) a.emp_no, first_name, last_name, birth_date, b.from_date, b.to_date, c.title 
--INTO mentorship_eligibilty
from employees a 
join dept_employee b on a.emp_no = b.emp_no 
join title c on a.emp_no = c.emp_no 
WHERE (birth_date between '1965-01-01' and '1965-12-31') and c.to_date = '9999-01-01' 
order by emp_no asc, c.to_date desc;

Select * from title where emp_no = '12155';