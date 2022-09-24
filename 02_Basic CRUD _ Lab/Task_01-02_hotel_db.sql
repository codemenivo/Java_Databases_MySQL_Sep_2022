CREATE DATABASE IF NOT EXISTS `hotel`; 
USE `hotel`;

CREATE TABLE departments (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(50)
);

INSERT INTO departments(name) VALUES('Front Office'), ('Support'), ('Kitchen'), ('Other');

CREATE TABLE employees (
	id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	job_title VARCHAR(50) NOT NULL,
	department_id INT NOT NULL,
	salary DOUBLE NOT NULL,
	CONSTRAINT `fk_department_id` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)
);

INSERT INTO `employees` (`first_name`,`last_name`, `job_title`,`department_id`,`salary`) VALUES
	('John', 'Smith', 'Manager',1, 900.00),
	('John', 'Johnson', 'Customer Service',2, 880.00),
	('Smith', 'Johnson', 'Porter', 4, 1100.00),
	('Peter', 'Petrov', 'Front Desk Clerk', 1, 1100.00),
	('Peter', 'Ivanov', 'Sales', 2, 1500.23),
	('Ivan' ,'Petrov', 'Waiter', 3, 990.00),
	('Jack', 'Jackson', 'Executive Chef', 3, 1800.00),
	('Pedro', 'Petrov', 'Front Desk Supervisor', 1, 2100.00),
	('Nikolay', 'Ivanov', 'Housekeeping', 4, 1600.00);
	
    /* Task_1 : Select Employee Information - Write a query to select all employees and retrieve 
	information about their id, first_name, last_name and job_title ordered by id.*/
    
    SELECT `id`, `first_name`, `last_name`, `job_title` 
    FROM `employees`
    ORDER by `id`; 

        /*Options : Aliases - Rename a Table or a Column Heading Тази команда променя само имената
        при визуалиазацията на таблицата или колоната, но не променя записа в базата данни! */
	SELECT e.`id` AS "№",
    e.`first_name` AS "First Name",
    e.`last_name` AS "Last Name",
    e.`job_title` AS "Job Title"
    FROM `employees` AS e 
    ORDER BY `id`;
    
    /* concat() - Return the string that results Concatenating the arguments */
    SELECT concat(`first_name`, " ", `last_name`) AS "Full Name",
    `job_title` AS "Job Title",
    `id` AS "№."
    FROM `employees`;
    
    /* CONCATINATION (2) : concat_ws() - Stands for concatenate with separator and 
    is a special form of CONCAT()  */
    SELECT `id` AS "№.",
    concat_ws("  ", `first_name`, `last_name`) AS "Full Name",
    `job_title` AS "Job Title"
    FROM `employees`;
    
    /* Task 02. Select Employees with Filter 
    Write a query to select all employees (id, first_name and last_name (as full_name), job_title,
salary) whose salaries are higher than 1000.00, ordered by id. Concatenate fields first_name and last_name
into 'full_name' */
SELECT `id`,
concat_ws(" ", `first_name`, `last_name`) AS "full_name",
`job_title`, `salary`
FROM`employees`
WHERE `salary` > 1000.00
ORDER BY `id`;
    
    /* DISTINCT (отделен, различен) to eliminate a duplicate results*/
    SELECT DISTINCT `department_id`
    FROM `employees`;
    
    /*Filter rows by specific conditions using the WHERE clouse*/
    SELECT `last_name`, `department_id`
    FROM `employees`
    WHERE `department_id` = 1;
    
    /* Conditions can be combined using NOT, OR, AND and brackets*/
    SELECT `last_name`, `department_id`
    FROM `employees`
    WHERE NOT (`department_id` = 3 OR `department_id` = 4);
    
    /* Problem 5: Select Employees by Multiple Filters
    Write a query to retrieve information about employees, 
    who are in department 4 and has a salary higher or equal to 1000.00 
    Order the information by id. */
    SELECT * FROM `employees`
    WHERE (`department_id` = 4 AND `salary` >= 1000.00);
    
    /* Views are virtual tables made from others tables */
    CREATE VIEW `v_hr_result_set1` AS
    SELECT
		`department_id`,
		concat(`first_name`, " " , `last_name`) AS `Full Name`, `salary`
	FROM `employees` 
    ORDER by `department_id`;
		SELECT * FROM `v_hr_result_set`;
    
/* Problem 4: Top Paid Employee
Write a query to create a view that selects all information about
 the top paid employee from the "employees" table in the hotel database. */    
 CREATE VIEW `v_top_paid_employee`
 AS
	SELECT * FROM `employees`
    ORDER BY `salary` DESC LIMIT 1;
    SELECT * FROM `v_top_paid_employee`;
    
    /* Updating DATA - The SQL UPDATE Command */
    UPDATE `employees`
    SET `last_name` = "Brown"
    WHERE `id` = 1;
    
    UPDATE `employees`
    SET `salary` = `salary` * 1.10,
		`job_title` = concat("Senior", " " , `job_title`)
	WHERE `department_id` = 3;
    
    /* Problem 3: Update Employees Salary
Update all employees' salaries whose job_title is "Manager" by adding 100. 
Retrieve information about salaries from table employees. */
UPDATE `employees`
SET `salary` = `salary` + 100
WHERE `job_title` = "Manager";
    SELECT `id`, `job_title`, `salary` FROM `employees`;
  
  
  /* Problem 6: Delete from Table
Write a query to delete all employees from the "employees" table who are in department 2 or 1. 
Then select all from table `employees` and order the information by id. */
DELETE FROM `employees`
WHERE (`department_id` = 1 OR `department_id` = 2);
	SELECT * FROM `employees`;  
    
    

	
CREATE TABLE rooms (
	id INT PRIMARY KEY AUTO_INCREMENT,
	`type` VARCHAR(30)
);

INSERT INTO rooms(`type`) VALUES('apartment'), ('single room');

CREATE TABLE clients (
	id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	room_id INT NOT NULL,
    CONSTRAINT fk_clients_rooms
    FOREIGN KEY (room_id)
    REFERENCES rooms(id)
);

INSERT INTO clients(`first_name`,`last_name`,`room_id`) 
VALUES('Pesho','Petrov', 1),('Gosho','Georgiev', 2),
('Mariya','Marieva', 2), ('Katya','Katerinova', 1), ('Nikolay','Nikolaev', 2);
