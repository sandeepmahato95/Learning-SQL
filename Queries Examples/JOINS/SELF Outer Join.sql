use sql_hr;

select e.employee_id, e.first_name, m.first_name
from employees e
left join employees m
on m.employee_id = e.reports_to -- 

# employee_id	first_name	first_name
33391	D'arcy	Yovonnda
37270	Yovonnda	
37851	Sayer	Yovonnda
40448	Mindy	Yovonnda
56274	Keriann	Yovonnda
63196	Alaster	Yovonnda
67009	North	Yovonnda
67370	Elladine	Yovonnda
68249	Nisse	Yovonnda
72540	Guthrey	Yovonnda
72913	Kass	Yovonnda
75900	Virge	Yovonnda
76196	Mirilla	Yovonnda
80529	Lynde	Yovonnda
80679	Mildrid	Yovonnda
84791	Hazel	Yovonnda
95213	Cole	Yovonnda
96513	Theresa	Yovonnda
98374	Estrellita	Yovonnda
115357	Ivy	Yovonnda


/*

on e.employee_id = m.reports_to

The key difference between the two statements lies in which columns are being compared in the ON clause during the JOIN. Let's explain this step-by-step.

Query Difference:
First Query:
ON m.employee_id = e.reports_to

This matches:
The manager's employee_id (from the alias m)
With the reports_to field of the employee (from the alias e).
It answers: "Who does this employee report to?"
Result: It retrieves the manager for each employee.
Second Query:
ON e.employee_id = m.reports_to

This matches:
The employee's employee_id (from the alias e)
With the reports_to field of the manager (from the alias m).
It answers: "Who reports to this employee?"
Result: It retrieves employees reporting to each manager.
Why the Second Query Gives Different Results:
Logic Change:
The second query flips the relationship between e (employee) and m (manager), meaning the table alias roles are reversed:

Instead of finding the manager for an employee, it finds employees reporting to a specific employee (who acts as a manager).
In this case:

For employee_id = 37270 (Yovonnda) → All employees with reports_to = 37270 will appear.
For employee_id = 33391 (D'arcy) → No one has reports_to = 33391, so the manager column will be NULL.

*/