CREATE DATABASE IF NOT EXISTS `soft_uni` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `soft_uni`;

SELECT 
    `department_id`, 
    MIN(`salary`) AS `minimum_salary`
FROM
    `employees`
WHERE
    `hire_date` > '2000-01-01'
GROUP BY `department_id`
HAVING `department_id` IN (2 , 5, 7)
ORDER BY `department_id`;

/* 13. Employees Average Salaries */
CREATE TABLE `new_table` SELECT `department_id`, `salary`, `manager_id` FROM
    `employees`
WHERE
    `salary` > 30000;

DELETE FROM `new_table` 
WHERE
    `manager_id` = 42;

UPDATE `new_table` 
SET 
    `salary` = `salary` + 5000
WHERE
    `department_id` = 1;

SELECT 
    `department_id`, AVG(`salary`) AS `avg_salary`
FROM
    `new_table`
GROUP BY `department_id`
ORDER BY `department_id`;

/* 14. Employees Maximum Salaries */
SELECT `department_id`, MAX(`salary`) AS "max_salary"
FROM `employees`
GROUP BY `department_id`
HAVING `max_salary` < 30000 OR `max_salary` > 70000
ORDER BY `department_id`;

/* 15. Employees Count Salaries */
SELECT COUNT(`salary`) AS " "
FROM `employees`
WHERE `manager_id` IS NULL;

/* 16. 3rd Highest Salary */
SELECT 
    `department_id`,
    (SELECT DISTINCT
            `salary`
        FROM
            `employees` AS e2
        WHERE
            e1.`department_id` = e2.`department_id`
        ORDER BY `salary` DESC
        LIMIT 1 OFFSET 2) AS 'third_highest_salary'
FROM
    `employees` AS e1
GROUP BY `department_id`
HAVING `third_highest_salary` IS NOT NULL
ORDER BY `department_id`;

/* 17. Salary Challenge */
SELECT 
    `first_name`, `last_name`, `department_id`
FROM
    `employees` f
WHERE
    `salary` > (
		SELECT 
            AVG(`salary`)
        FROM
            `employees` e
        WHERE
            f.`department_id` = e.`department_id`
            )
ORDER BY `department_id` , `employee_id`
LIMIT 10;

/*18. Departments Total Salaries  */
SELECT 
    `department_id`, 
    SUM(`salary`) AS `total_salary`
FROM
    `employees`
GROUP BY `department_id`
ORDER BY `department_id`;












