create database sujitasolanki2;

use sujitasolanki2;

create table sample_table_worker
(
worker_id int auto_increment primary key,
first_name varchar (15),
last_name varchar(15),
salary decimal(10,2),
joining_date date,
department varchar(50)
);

alter table sample_table_worker modify column joining_date datetime;

truncate table  sample_table_worker ;

INSERT INTO sample_table_worker (first_name, last_name, salary, joining_date, department)
VALUES 
    ('John', 'Doe', 50000.00, '2023-01-15 09:00:00', 'HR'),
    ('Jane', 'Smith', 60000.00, '2022-10-20 10:30:00', 'Finance'),
    ('Michael', 'Brown', 75000.00, '2021-03-05 08:45:00', 'IT'),
    ('Emily', 'Davis', 45000.00, '2023-06-01 14:00:00', 'Marketing'),
    ('William', 'Wilson', 70000.00, '2020-09-17 16:20:00', 'Operations'),
    ('Olivia', 'Johnson', 80000.00, '2019-12-10 11:15:00', 'IT'),
    ('James', 'Taylor', 52000.00, '2023-04-11 13:30:00', 'HR'),
    ('Sophia', 'Anderson', 48000.00, '2023-08-25 15:45:00', 'Finance'),
    ('Liam', 'Thomas', 67000.00, '2022-05-14 12:00:00', 'Marketing'),
    ('Mia', 'Martin', 62000.00, '2021-07-09 09:15:00', 'Operations');

-- 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME 
	-- Ascending and DEPARTMENT Descending?
    
RENAME TABLE sample_table_worker TO worker;

select * from worker order by first_name asc, department desc;

-- 2) Write an SQL query to print details for Workers with the first names “vipul” and “Satish” 
	-- from the Worker table. 

select * from worker where first_name in ('vipul','satish');

-- 3) . Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘l’ and 
      -- contains six alphabets?
      
select * from worker where first_name like '______l';

-- 4) Write an SQL query to print details of the Workers whose SALARY lies between 1 ?

select * from worker where salary between 1 and 100000;

-- 5) Write an SQL query to fetch duplicate records having matching data in some fields of a table. 

select * from worker where salary  = ( select salary from worker group by salary having count(salary)>1);

-- 6). Write an SQL query to show the top 6 records of a table ?

select * from worker limit 6;

-- 7). Write an SQL query to fetch the departments that have less than five people in them ?
select count(worker_id), department from worker group by department having count(worker_id)<5;


-- 8)Write an SQL query to show all departments along with the number of people in there ?
select count(worker_id), department from worker group by department;


-- 9)Write an SQL query to print the name of employees having the highest salary in each 
  -- department.
  
select first_name , last_name , salary, department from worker where salary in (select max(salary) from worker group by department) ; 

-- Question 2 : Open school database, then select student table and use following SQL statements. 
-- TYPE THE STATEMENT, PRESS ENTER AND NOTE THE OUTPUT 

create table student
(
std_id int auto_increment primary key,
std_name varchar (30),
gender varchar(10),
percentage decimal(10,2),
class int,
sec varchar(2),
stream varchar(20),
DOB varchar (20)
);

INSERT INTO student (std_name, gender, percentage, class, sec, stream, DOB)
VALUES 
    ('John Doe', 'Male', 85.50, 10, 'A', 'Science', '2007-05-15'),
    ('Jane Smith', 'Female', 92.30, 10, 'B', 'Commerce', '2007-09-21'),
    ('Michael Brown', 'Male', 78.75, 11, 'A', 'Arts', '2006-03-12'),
    ('Emily Davis', 'Female', 88.60, 12, 'C', 'Science', '2005-07-08'),
    ('William Wilson', 'Male', 65.40, 11, 'B', 'Commerce', '2006-11-03'),
    ('Olivia Johnson', 'Female', 91.25, 12, 'A', 'Science', '2005-01-19'),
    ('Sophia Anderson', 'Female', 87.50, 10, 'C', 'Arts', '2007-12-25'),
    ('James Taylor', 'Male', 72.00, 11, 'A', 'Commerce', '2006-06-14'),
    ('Liam Thomas', 'Male', 83.40, 10, 'B', 'Science', '2007-03-22'),
    ('Mia Martin', 'Female', 79.50, 12, 'C', 'Arts', '2005-09-11');
    
-- 1) To display all the records form STUDENT table?
select * from student;

-- 2)  To display any name and date of birth from the table STUDENT?
select std_name, DOB from student;

-- 3) To display all students record where percentage is greater of equal to 80 FROM student table?
select * from student where percentage>=80;

-- 4)  To display student name, stream and percentage where percentage of student is more than 80?
select std_name, stream , percentage from student where percentage>80; 

-- 5) . To display all records of science students whose percentage is more than 75 form student table ?
select * from student where stream = 'science' and percentage >75;








    
    
    
    
    