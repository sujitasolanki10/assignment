create database sujitasolanki;

-- 1) statement to create the contact table?

use sujitasolanki;

create table contact
(
contact_id int auto_increment primary key,
company_id int,
first_name varchar (30),
last_name varchar (30),
street varchar(45),
city varchar (30),
state varchar (4),
zip varchar (10),
is_main boolean,
email varchar (45),
phone varchar(12)
);

-- 2) statement to create the employee table?

create table Employee
(
Employee_id int auto_increment primary key,
first_name varchar(40),
last_name varchar (40),
salary decimal (10,2),
hire_date date,
job_title varchar (25),
Emain varchar (45),
phone varchar(12)
);

-- 3) statement to create the contactemployee table 
-- HINT - use DATE as the data type for contactdate. it allows you to store the date in 
--        in this format: YYYY-MM-DD (ie. '2014-03-12' for march 12, 2014).
 
create table ContactEmployee
(
ContactEmployee_id int auto_increment primary key,
Contact_d int,
Employee_id int,
Contact_Date Date,
Description varchar(100)
);

-- 4) in the employee table, the statement that changes lesley bland's phone number 
-- to 215-555-8800?


insert into Employee values (02,"lesley","bland's",50000,'2024-09-01',"data analysis","lesleybland14@gmail.com","3452678675");
select * from employee;
set sql_safe_updates = 0;
update employee set phone = '2155558800' where first_name = "lesley";

-- 5) in the company table, the statement that changes the name of "urban outfitters, inc." to "urban outfitters".


create table company
(
Company_id int auto_increment primary key,
CompanyName varchar(30),
street varchar (30),
city varchar(40),
state varchar(2),
Zip varchar (10)
);

insert into company values (01,"Urban outfitters, Inc.","cg road","ahmdabad","GT",'30054');

update company set CompanyName = "urban outfitters" where company_id = 1;

-- 6) In contact Employee table, the statement that removes dianne connor's contact even with jack lee (one statement).
     -- HINT- use the primary key of the contact employee table to specify the correct record to remove.
     
insert into contact values (1,1,"dianne","connor's","low garden","ahmdabaad","GJ",30056,true,
                                 "connordianne12@gamil.com",3452767453);
							
insert into employee values (3,"jack","lee",30000,'2025-01-01',"software engineer","jacklee23@gmail.com",9873564287);

delete from contactemployee where contactemployee_id = 1;


-- 7) Write the SQL SELECT  query that doiplay the names of the employee that have contacted toll brothers(one statement).
      -- run the SQL SELECT query in MYSQL workbench. copy the results below as well ?
      
select e.first_name , e.last_name from company c join contact ct on c.Company_id=ct. company_id join contactemployee ce on 
ct.contact_id=ce.Contact_d join employee e on ce.Employee_id=e.Employee_id where c.CompanyName='Toll brothers';

select * from contact;
select * from employee;
select * from company;
SELECT 
    *
FROM
    contactemployee;

-- 8) what is the significance of "%" and "_" operators in the LIKE statement ?

/* In SQL, the LIKE statement is used in the WHERE clause to search for a specified pattern in a column.
The % and _ operators are wildcard characters used within the LIKE pattern to represent variable content.

1. % Wildcard
Represents zero, one, or multiple characters.
Useful for matching patterns regardless of the length or content of certain sections.
Examples:

WHERE column_name LIKE 'a%'
Matches any value that starts with "a" (e.g., "apple", "ant", "abc").
WHERE column_name LIKE '%a'
Matches any value that ends with "a" (e.g., "banana", "india", "a").
WHERE column_name LIKE '%a%'
Matches any value that contains "a" anywhere (e.g., "cat", "data", "amazing").
2. _ Wildcard
Represents exactly one character.
Useful for matching strings where you know the position and number of unknown characters.
Examples:

WHERE column_name LIKE 'a_'
Matches any value that starts with "a" and has exactly one additional character (e.g., "ab", "an", "ax").
WHERE column_name LIKE '_a'
Matches any value that has exactly one character before "a" (e.g., "ba", "fa", "na").
WHERE column_name LIKE 'a__'
Matches any value that starts with "a" and has exactly two additional characters (e.g., "abc", "ant", "amy").
Combined Use
You can combine % and _ to create more specific patterns:

WHERE column_name LIKE 'a%_b'
Matches any value that starts with "a", ends with "b", and has at least one character in between (e.g., "appleb", "anb", "azzzb").
WHERE column_name LIKE '_a%z'
Matches any value where the second character is "a" and the last character is "z" (e.g., "baz", "cazzz"). */


-- 9) explain normalization in the context of database ?

/* Why Normalize?
Eliminate Redundancy:
Prevents duplicate data, reducing storage requirements and avoiding inconsistencies during updates.
Ensure Data Integrity:
Maintains the accuracy and consistency of data.
Simplify Maintenance:
Easier to insert, update, or delete data without unintended side effects.
Enhance Query Performance:
Organizing data logically can make queries faster and more efficient.
Normal Forms (NF)
Normalization is achieved through various stages, called normal forms. Each stage has specific rules and builds upon the previous one:

1. First Normal Form (1NF): Eliminate Repeating Groups
Rule: Each column must contain atomic (indivisible) values, and each row must have a unique identifier (a primary key).
Objective: Ensure that the data is stored in a tabular format with no multivalued fields.
Example (Non-1NF Table):

Student_ID	Name	Courses
1	Alice	Math, Science
2	Bob	History
Normalized (1NF Table):

Student_ID	Name	Course
1	Alice	Math
1	Alice	Science
2	Bob	History
2. Second Normal Form (2NF): Remove Partial Dependency
Rule: All non-key attributes must depend on the entire primary key, not just part of it. This applies to tables with composite keys.
Objective: Eliminate partial dependencies by separating data into additional tables.
Example (Non-2NF Table):

Student_ID	Course	Instructor
1	Math	Dr. Smith
1	Science	Dr. Jones
2	History	Dr. Clark
If Instructor only depends on Course and not Student_ID, we create a separate table for instructors.

Normalized (2NF Tables): Students Table:

Student_ID	Course
1	Math
1	Science
2	History
Instructors Table:

Course	Instructor
Math	Dr. Smith
Science	Dr. Jones
History	Dr. Clark
3. Third Normal Form (3NF): Remove Transitive Dependency
Rule: All non-key attributes must depend only on the primary key, not on other non-key attributes.
Objective: Eliminate dependencies between non-key attributes.
Example (Non-3NF Table):

Student_ID	Course	Instructor	Dept_Name
1	Math	Dr. Smith	Science
2	History	Dr. Clark	Humanities
If Dept_Name depends on Instructor rather than Course, we create a separate table for departments.

Normalized (3NF Tables): Students Table:

Student_ID	Course
1	Math
2	History
Instructors Table:

Course	Instructor
Math	Dr. Smith
History	Dr. Clark
Departments Table:

Instructor	Dept_Name
Dr. Smith	Science
Dr. Clark	Humanities
Higher Normal Forms
Boyce-Codd Normal Form (BCNF): A stricter version of 3NF where every determinant is a candidate key.
Fourth Normal Form (4NF): Eliminates multi-valued dependencies.
Fifth Normal Form (5NF): Decomposes tables to eliminate redundancy that arises from join dependencies.
Sixth Normal Form (6NF): Rarely used, deals with temporal data. */


-- 10) what does a join in MYSQL mean?
/* In MySQL, a join is a command that combines data from multiple tables in a database
 based on shared column values.
Purpose - Joins are used to retrieve data from multiple tables that share a common field and get
 a single result. 
Efficiency- Joins are more efficient than performing multiple queries and combining the results later. 
Where to use - Joins can be used in the SELECT, UPDATE, and DELETE statements.
Types - MySQL supports three basic types of joins: inner joins, outer joins, and cross joins. 
Default join type - The default join type for JOIN is INNER JOIN. 
 
 
-- 11) what do you understand about DDL, DCL, and DML in MYSQL ?
/* 1. DDL (Data Definition Language)
Purpose: DDL commands define or modify the structure of the database objects such as tables, schemas, indexes, or constraints.

Common DDL Commands:
CREATE:

Used to create a new database or table.
Example:
sql
Copy code
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10, 2)
);
ALTER:

Used to modify an existing database object (e.g., add, drop, or modify columns).
Example:
sql
Copy code
ALTER TABLE employees ADD COLUMN department_id INT;
DROP:

Deletes an entire database, table, or other database objects.
Example:
sql
Copy code
DROP TABLE employees;
TRUNCATE:

Deletes all rows from a table but keeps its structure.
Example:
sql
Copy code
TRUNCATE TABLE employees;

2. DML (Data Manipulation Language)
Purpose: DML commands manipulate the data stored in tables.

Common DML Commands:
SELECT:

Retrieves data from a database.
Example:
sql
Copy code
SELECT * FROM employees;
INSERT:

Adds new rows to a table.
Example:
sql
Copy code
INSERT INTO employees (id, name, salary)
VALUES (1, 'Alice', 50000.00);
UPDATE:

Modifies existing rows in a table.
Example:
sql
Copy code
UPDATE employees
SET salary = 55000.00
WHERE id = 1;
DELETE:

Removes rows from a table.
Example:
sql
Copy code
DELETE FROM employees WHERE id = 1;

3. DCL (Data Control Language)
Purpose: DCL commands control access and permissions for database objects.

Common DCL Commands:
GRANT:

Provides privileges to users or roles.
Example:
sql
Copy code
GRANT SELECT, INSERT ON employees TO 'user1'@'localhost';
REVOKE:

Removes previously granted privileges.
Example:
sql
Copy code
REVOKE INSERT ON employees FROM 'user1'@'localhost'; */

-- 12) what is the role of the MYSQL JOIN clause in a query, and what are some common types of joins?

/* Role of the MySQL JOIN Clause
Combines Data: Retrieves data from multiple tables in a single query.
Establishes Relationships: Joins tables based on a common column (e.g., primary and foreign key).
Efficient Queries: Allows fetching related data without duplicating it in tables,supporting
normalized database structures.
Customizable: Supports various join types to suit different query requirements.

1. INNER JOIN 
Compares all rows from all tables specified in a query with each other and returns records with matching values as a new result table.

2. LEFT OUTER JOIN
Returns the result table with all rows from the left table and only those rows from the right table that match
 the JOIN condition (non-matching rows are returned with NULLs).

3. RIGHT OUTER JOIN
Returns the result table with all rows from the right table and only those rows from the left table
 where the JOIN condition is fulfilled (non-matching rows are returned with NULLs).

4. CROSS JOIN
Combines each row from one table with each row from another table and thus returns a
 new result table with all possible row combinations from each table
 
5. FULL OUTER JOIN
MySQL does not directly support FULL OUTER JOIN that returns both matching
and non-matching rows from the joined tables, but you can combine LEFT and RIGHT
OUTER JOINs to achieve the same result.

6.SELF JOIN
Compares a row with other rows within the same table or extracts hierarchical
data - table aliases should be used instead of repeating the same table name
in a query. */

 








    



