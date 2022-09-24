CREATE DATABASE IF NOT EXISTS `soft_uni` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `soft_uni`;

/* 9. Find Names of All Employees */
SELECT
	concat_ws(" ", `first_name`, `middle_name`, `last_name`) 
    AS "Full Name"
FROM `employees`
WHERE `salary` IN (25000, 14000, 12500, 23600);

/* 10. Find All Employees Without Manager */
SELECT `first_name`, `last_name`
FROM `employees`
WHERE `manager_id` IS NULL;

/* 11. Find All Employees with Salary More Than */
SELECT `first_name`, `last_name`, `salary`
FROM `employees`
WHERE `salary` > 50000
ORDER BY `salary` DESC;

/* 12. Find 5 Best Paid Employees */
SELECT `first_name`, `last_name`
FROM `employees`
ORDER BY `salary` DESC
LIMIT 5;

/* 13. Find All Employees Except Marketing */
SELECT `first_name`, `last_name`
FROM `employees`
WHERE `department_id` != 4;

/* 14. Sort Employees Table */
SELECT * from `employees`
ORDER BY `salary` DESC, `first_name`, `last_name` DESC, `middle_name`, `employee_id`;

/* 15. Create View Employees with Salaries */
CREATE VIEW `v_employees_salaries` AS
SELECT `first_name`, `last_name`, `salary`
FROM `employees`;

/* 16. Create View Employees with Job Titles */
CREATE VIEW `v_employees_job_titles` AS
SELECT
	concat_ws(" ", `first_name`, `middle_name`, `last_name`) AS `full_name`, `job_title`
FROM `employees`;

/* 17. Distinct Job Titles */
SELECT DISTINCT `job_title` 
FROM `employees`
ORDER BY `job_title`;

/* 18. Find First 10 Started Projects */
SELECT * FROM `projects`
ORDER BY `start_date`, `name`
LIMIT 10;

/* 19. Last 7 Hired Employees */
SELECT `first_name`, `last_name`, `hire_date` FROM `employees`
ORDER BY `hire_date` DESC
LIMIT 7;

/* 20. Increase Salaries */
UPDATE `employees`
SET `salary` = `salary` * 1.12
WHERE `department_id` IN (1, 2, 4, 11);
	
SELECT `salary` FROM `employees`;







