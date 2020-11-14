Select * from unique_titles;

Select * from mentorship_eligibilty;

Select DISTINCT ON (emp_no) emp_no, first_name, last_name, title 
--INTO unique_titles
from retirement_titles order by emp_no asc,to_date desc ;

Select title, count(*) 
--INTO retiring_titles
from unique_titles group by 1 order by 2 desc;

Select * from unique_titles;


Select title, count(*) 
from mentorship_eligibilty 
group by 1 order by 2 desc;


--Gender by title breakdown
Select a.gender, b.title, COUNT(b.emp_no) 
from employees a 
join mentorship_eligibilty b on a.emp_no = b.emp_no 
group by 1,2;

--Gender breakdown by retiring
Select gender, count(*) 
from unique_titles a join employees b on a.emp_no = b.emp_no group by 1;
