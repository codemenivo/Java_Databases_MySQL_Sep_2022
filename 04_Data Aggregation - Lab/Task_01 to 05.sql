CREATE DATABASE IF NOT EXISTS restaurant;
use restaurant;

/* 1. Departments Info */
SELECT `department_id`,  COUNT(`department_id`) AS `Number of employees`
FROM `employees`
GROUP BY `department_id`
ORDER BY `department_id`;

/* 2. Average Salary */
SELECT `department_id`, round( AVG(`salary`), 2) AS `average salary `
FROM `employees`
GROUP BY `department_id`
ORDER BY `department_id`;

/* 3. Minimum Salary */
SELECT `department_id`, round(MIN(`salary`), 2) AS `Min Salary`
FROM `employees`
GROUP BY `department_id`
HAVING `Min Salary` > 800
ORDER BY `department_id`;

/* 4. Appetizers Count */
SELECT COUNT(*)
FROM `products`
WHERE `category_id` = 2 AND `price` >8;

/* 5. Menu Prices */
SELECT 
	`category_id`,
    round(AVG(`price`), 2) AS "Avarage price",
    round(MIN(`price`), 2) AS "Cheapest Product",
    round(MAX(`price`), 2) AS "Most Expensive Product"
FROM `products`
GROUP BY `category_id`;





