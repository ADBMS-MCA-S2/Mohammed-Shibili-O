create database libr;
use libr;
create table library(bid int,bname varchar(20),author varchar(20),copies int);
insert into library(bid,bname,author,copies) values(101,'harry potter','abcd',5)
,(102,'spiderman','xyzw',2)
,(103,'randamoozham','thakazhi',8)
,(104,'ikigai','ram',9);
create table laibrary_audit1(bookid int,bookname varchar(20),author varchar(20),copies int);
set sql_safe_updates=0;
update library set copies=5 where bid=103;
select * from laibrary_audit1
/*trigger
----------------------------------------------------------------------------
CREATE DEFINER=`root`@`localhost` TRIGGER `libr`.`library_AFTER_UPDATE` AFTER UPDATE ON `library` FOR EACH ROW
BEGIN
insert into laibrary_audit1 values(old.bid,old.bname,old.author,old.copies);
END*/