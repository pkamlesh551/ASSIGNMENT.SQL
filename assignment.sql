select * from employees ;
select * from departments;
select first_name,hire_date from employees;
select firsT_name ,concat_ws(", ",employee_id,first_name) as ename from employees;
select first_name,hire_date,department_id,job_id from employees where job_id like "%k"; 
select concat_ws(",",employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) as output from employees;
select first_name,salary  from employees where salary >2000;
select first_name as "name" , hire_date as "start date" from employees;
select first_name,hire_date from employees order by hire_date;
select first_name,salary from employees order by salary desc;
select first_name,department_id ,commission_pct,salary from employees order by commission_pct,salary desc;
select first_name,job_id from employees where job_id not in( "manager");
select last_name,job_id,salary from employees where job_id in ("sa_rep","st_clerk") and salary != 2500 and 3500 and 5000;
select max(salary ) from employees;
select max(commission_pct) from employees;
select min(salary) from employees;
select min(commission_pct) from employees;
select avg(salary) from employees;
select avg(commission_pct )from employees;
select department_id,sum(salary) from employees group by department_id;
select e.department_id,d.department_name,sum(e.salary) as total_salary from employees e inner join departments d on e.department_id=d.department_id group by e.department_id,department_name;
select first_name,commission_pct from employees where commission_pct =0;
select first_name,commission_pct,
if(commission_pct!=0,"yes","no commission") as commission from employees;
select first_name,salary,commission_pct*2,
if(commission_pct!=0,"*2","no commission") as commission from employees;
select e.first_name,e.department_id from employees e join employees s on e.department_id=s.department_id  group by first_name,department_id;
select sum(salary) from employees;
select manager_id, count(employee_id) from employees  group by manager_id order by count(employee_id);
select last_name ,department_id,salary  from employees where last_name like  '_a%';
select department_id,sum(salary) from employees group by department_id;
select department_id,max(salary) from employees group by department_id;
select employee_id , concat_ws("-", first_name,last_name) as full_name  from employees;
select last_name , employee_id, department_name from employees  inner join departments on employees.department_id=departments. department_id;
select distinct department_name  from departments;
select last_name, department_name,location_id ,commission_pct from employees inner join departments on employees.department_id= departments.department_id where commission_pct!=0;
SELECT e.employee_id 'Emp_Id', e.last_name 'Employee', m.employee_id 'Mgr_Id', m.last_name 'Manager' FROM employees e join employees m 
ON (e.manager_id = m.employee_id);
select  e. first_name,e.last_name, e.department_id from employees e join employees s on e. department_id=s.department_id;
select first_name,salary,department_name,
CASE
WHEN salary>50000 THEN'A'
WHEN salary>30000 THEN 'B'
WHEN salary<30000 THEN 'C' 
END  as grade from employees join departments on employees.department_id=departments.department_id;
select first_name,last_name,salary,department_id from employees where salary>(select avg(salary) from employees) order by salary asc;
select employee_id, last_name from employees where last_name like'a%';
select employee_id, last_name from employees where last_name like'a%u';
select last_name,salary from employees limit 3;

