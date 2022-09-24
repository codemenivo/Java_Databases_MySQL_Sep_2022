USE `gamebar`;

UPDATE `employees` SET `middle_name` = 'NOT NULL' WHERE (`id` = '1');
UPDATE `employees` SET `middle_name` = "NOT NULL" WHERE (`id` = '2');

DESCRIBE `employees`