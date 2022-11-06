CREATE DATABASE IF NOT EXISTS `soft_uni` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `soft_uni`;

/* 1. Managers  */
SELECT 
    e.`employee_id`,
    CONCAT(e.`first_name`, ' ', e.`last_name`) AS 'full_name',
    d.`department_id`,
    d.`name` AS 'department_name'
FROM
    `employees` AS e
        RIGHT JOIN
    `departments` AS d ON d.`manager_id` = e.`employee_id`
ORDER BY `employee_id`
LIMIT 5;

/* 2. Towns and Addresses */
SELECT 
    t.`town_id`, t.`name` AS 'town_name', a.`address_text`
FROM
    `addresses` AS a
        RIGHT JOIN
    `towns` AS t ON t.`town_id` = a.`town_id`
WHERE
    t.`name` = 'San Francisco'
        OR t.`name` = 'Carnation'
        OR t.`name` = 'Sofia'
ORDER BY t.`town_id` , a.`address_text`;

/* 3. Employees Without Managers */
 
SELECT 
    `employee_id`,
    `first_name`,
    `last_name`,
    `department_id`,
    `salary`
FROM
    `employees`
WHERE
    `manager_id` IS NULL;

/* 4. High Salary */
SELECT 
    COUNT(`salary`) AS 'count'
FROM
    `employees`
WHERE
    `salary` > (SELECT 
            AVG(`salary`)
        FROM
            `employees`);











