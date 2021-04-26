/*--------------------------------------------------Create-------------------------------------------------------------*/
create database project;
use project;

create table  employees(emp_no int , birth_date Date ,first_name varchar (14) , last_name varchar(16) , gender enum('M','F'),
 hire_date date );
 
 create table dept__manager (emp_no int ,dept_no char (4) , from_date date , to_date date , primary key (dept_no)) ;

create table departments (dept_no char (4), dept_name varchar(40));
create table salaries ( emp_no int , salary int , from_date date ,to_date date  ) ;
 
 create table dept_emp (emp_no int , dept_no char(4), from_date date, to_date  date );
 
 describe dept_emp;
 show tables;
 describe employees;
 /*---------------------------Insert ----------------------------------------------  */
 
 insert into employees values (1,date'1990/2/2','Pradip' , 'Pimpare ','M' ,date'2020/1/1' ) ;
 insert into employees values (2,date '1994/12/2','Akash' , 'Patil','M' ,date '2020/7/2') ;
 insert into employees values (3,date '1986/1/5','Vishal' , 'Mote','M' ,date '2018/9/1' ) ;
 insert into employees values (4,date '1985/11/3','kannan' , 'Nadar','M' ,date'2018/11/3' ) ;
 insert into employees values (5,date '1987/7/23','Ankita' , 'Patel','F' ,date '2019/3/21' ) ;
 insert into employees values (6,date '1990/4/13','Mayuri' , 'Patil','F' ,date '2019/3/21' ) ;
 insert into employees values (7,date '1992/6/4','Tushar' , 'Madavi','M' ,date '2021/7/14' ) ;
 insert into employees values (8,date '1980/11/12','Radha' , 'Rani','F' ,date '2017/1/12' ) ;
 insert into employees values (9,date '1986/2/6','Karan' , 'Gaikvad','M' ,date '2017/1/12' ) ;
 insert into employees values (10,date '1988/11/5','Vedant' , 'Pawar','M' ,date '2020/1/4' ) ;
 insert into employees values (11,date '1974/2/4','Akshay' , 'Patil','M' ,date '2021/2/3' ) ;
 insert into employees values (12,date '1980/8/21','Shubham' , 'Ghuge','M' ,date '2019/1/5' ) ;
 insert into employees values (13,date'1987/4/5','Sahil' , 'Murti','M' ,date '2019/1/5' ) ;
 insert into employees values (14,date '1990/4/8','Raj' , 'Lahane','M' ,date '2017/12/2' ) ;
 
 insert into employees values (15,date '1990/5/11','Mayur' , 'Mahale','M' ,date '2017/1/2' ) ;
 insert into employees values (16,date '1990/3/29/3','Rajesh' , 'Gharat','M' ,date '2018/1/12' ) ;
 insert into employees values (17,date '1982/2/2','Amerja' , 'Manjare','F' ,date '2020/1/21' ) ;
 insert into employees values (18,date '1988/3/31','Anuja' , 'Ingale','F' ,date '2017/5/3' ) ;
 insert into employees values (19,Date '1989/9/1','Sai' , 'Gavad','M' ,date '2021/5/1' ) ;
 insert into employees values (20, Date '1922/8/1','Ram' , 'Shinde ','M' ,date '2020/1/14') ;
 
 select * from employees;
 show tables;
 describe dept_emp;
 select * from dept_emp;
 
 insert into dept_emp values (3,1,date '2018/9/1',date '2020/4/8');
 insert into dept_emp values (12,2,date '2019/1/5',date '2021/5/11');
 insert into dept_emp values (6,3,date '2019/8/21',date '2021/7/11');
 insert into dept_emp values (8,4,date '2017/1/12',date '2020/3/9');
 insert into dept_emp values (4,5,date'2018/11/3',date '2021/4/8');
 insert into dept_emp values (13,6,date '2019/1/5',date '2020/1/8');
 
 show tables;
describe departments ;
insert into departments values (1,'Sales');
insert into departments values (2,'Research & Development');
insert into departments values (3,'Human Resources');
insert into departments values (4,'Marketing');
insert into departments values (5,'Finance');
insert into departments values (6,'General Management');
select * from departments;

describe salaries;
insert into salaries values (1,20000, date'2020/1/1',date'2021/1/1'  );
insert into salaries values (2,20000, date '2020/7/2',date'2021/7/1'  );
insert into salaries values (5,34000, date '2019/3/21',date'2021/6/1'  );
insert into salaries values (6,25000, date '2019/3/21',date'2020/7/1'  );
insert into salaries values (9,30000, date '2017/1/12',date'2019/6/12'  );
insert into salaries values (10,21000, date '2020/1/4',date'2021/6/10'  );
insert into salaries values (13,40000, date '2019/1/5',date'2021/4/1'  );
insert into salaries values (15,43000, date '2017/1/2',date'2020/3/10'  );
insert into salaries values (18,50000, date '2017/5/3',date'2021/11/1'  );

show tables;
describe dept__manager;
insert into dept__manager values (10,1,date '2020/1/4',date'2021/6/10');
insert into dept__manager values (6,2,date '2019/3/21',date'2020/6/10');
insert into dept__manager values (2,3,date '2020/7/2',date'2021/5/12');
insert into dept__manager values (9,4,date '2017/1/12',date'2020/1/10');
insert into dept__manager values (1,5,date'2020/1/1',date'2021/1/1');
insert into dept__manager values (13,6,date '2019/1/5',date'2020/1/10');
/*    Select statements       
*/

select * from employees;
SELECT * FROM employees WHERE first_name LIKE 'Pradip';
select  * from employees where first_name like 'P%';
select  * from employees where first_name like 'S%' and gender ='M';
select  * from employees where emp_no in (4,5,7,9);
select  * from employees where emp_no between 4 and 9;
select  * from employees where hire_date ='2019-03-21';
select * from salaries where salary >30000;
select * from salaries where salary<22000;
select * from salaries where salary between 22000 and 30000 ;
select * from salaries where from_date ='2017-01-12' ;
select * from salaries where emp_no ='1';

select count(*) from salaries where salary>20000;
select * from employees  order by hire_date desc;
select * from salaries  order by salary desc;

select emp_no , salary from salaries group by emp_no having avg(salary)>25000 order by emp_no desc;
/*--------------------------------------------aggregrat statements-----------------------------------------------*/

 select dept_no,dept_name from departments;
 select count(distinct(dept_no)) as total_departments from departments;

select sum(salary) as total_salary from salaries ;
select emp_no,min(salary ) as Lowest_salary from salaries ;
select emp_no,max(salary ) as Lowest_salary from salaries ;
select Round(avg(salary),2) as Avarage_sal from salaries;
/*------------------------------------------joins---------------------------------------------------------*/
show tables;
select *  from dept_emp;
select e.emp_no,d.dept_no,e.first_name from employees e join dept__manager d on e.emp_no=d.emp_no;
select e.emp_no,e.first_name,s.salary from employees e join salaries s on e.emp_no=s.emp_no;
select e.emp_no,e.first_name,s.salary from employees e left join salaries s on e.emp_no=s.emp_no;
select e.emp_no,e.first_name,s.salary from employees e right join salaries s on e.emp_no=s.emp_no where salary>30000;
select e.emp_no,e.first_name,d.dept_no from employees e  join dept_emp d on e.emp_no=d.emp_no order by dept_no;

/*---------------------update----------------------------------*/
select * from employees;
SET autocommit = 0;
update employees set first_name='Arvind' where emp_no='1';
UPDATE employees SET first_name = 'Stella', gender = 'M' WHERE emp_no = '6';

rollback;


