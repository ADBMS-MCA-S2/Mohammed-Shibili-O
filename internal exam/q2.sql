create database emp;
use emp;
create table employee(empno int,ename varchar(20),job varchar(20),mgr varchar(20),hiredate varchar(10),sal int8,commission int4,deptno int);
insert into employee(empno,ename,job,mgr,hiredate,sal,commission,deptno)
values(101,'ram','salesman','abhi','30-01-2019',15000,500,50),
values(102,'stefi','manager','shibili','16-01-2019',30000,2000,52)
,(102,'latheef','manager','shibili','16-01-2019',30000,2000,52)
,(103,'sunil','clerk','hamna','02-01-2019',20000,700,53)
,(104,'siva','clerk','abc','16-01-2019',30000,2000,53),(110,'sabu','manager','shibili','16-01-2019',30000,2000,10)
,(110,'sabu','manager','shibili','16-01-2019',30000,2000,10)
,(110,'sabu','manager','shibili','16-01-2019',20000,2000,30);
create table dept(deptno int,dname varchar(20),loc varchar(10));
insert into dept(deptno,dname,loc) values(50,'sales','kollam'),(53,'clerk','tvm'),(52,'manager','pkd');
select * from employee;
select * from dept;
select count(empno) from employee where job='clerk' ; /*1*/
select ename from employee where ename like 'la%'/*5*/;
select * from employee where deptno=10 and sal>(select sal from employee where deptno=30) /*6*/



