create database college;
use college;
create table department(dept_no int primary key,dept_name varchar(20),location varchar(20));
insert into department values(101,"MCA","kollam"),
(102,"EC","palakkad"),
(103,"mech","malappuram"),
(104,"chemical","kollam"),
(105,"CS","tvm");
create table employee(emp_no int primary key,emp_name varchar(20),salary int,dept_no int ,foreign key(dept_no) references department(dept_no));
insert into employee values(1001,"ram",20000,103),
(1002,"don",20000,104),
(1003,"binoy",20000,101),
(1004,"sunil",20000,102),
(1005,"aysha",20000,103),
(1006,"shibili",20000,101);
#3
select sum(salary) as total_salary from employee;
#5
select emp_name from employee where emp_name like 'a%';
#4
select department.dept_name,count(emp_no) as no_of_emp from department join employee using(dept_no) group by dept_name;